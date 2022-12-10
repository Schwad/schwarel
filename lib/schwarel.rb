# frozen_string_literal: true

# require "zeitwerk"
# loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
# loader.setup
# require_relative "schwarel/version"

module Schwarel
  class Error < StandardError; end
end

require "active_support/dependencies/autoload"
require "active_support/concern"
require "active_support/core_ext/module/attribute_accessors"

module ActiveRecord
  extend ActiveSupport::Autoload
  autoload :Table

  module Core
    extend ActiveSupport::Concern
    module ClassMethods
      def define_table_constant(child_class)
        Table.base = child_class
        child_class.const_set(:Table, Table)
      end

      def inherited(child_class) # :nodoc:
        # initialize cache at class definition for thread safety
        child_class.initialize_find_by_cache
        child_class.define_table_constant(child_class)
        super
      end
    end

    module Table
      mattr_accessor :base

      module_function

      ##
      # Contains class methods corresponding to a table's columns, lazily evaluated
      # at call time. Returns instances of <tt>Arel::Attributes::Attribute</tt>.
      #
      # Available through a Model::Table interface:
      #
      # Developer::Table.id.class #=> Arel::Attributes::Attribute

      def method_missing(method_name, *_args)
        send(:define_method, method_name) do
          base.arel_attribute(method_name)
        end
        send(method_name)
      end

      def respond_to_missing?(method_name, include_private = false)
        columns.find { |c| c.name == method_name.to_s } || super
      end

      def columns
        base.connection.columns(base.table_name)
      end
    end
  end
end
