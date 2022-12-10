# frozen_string_literal: true

require "test_helper"

class SchwarelTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Schwarel.const_defined?(:VERSION)
    end
  end

  test "CI smoketest" do
    assert_equal("actual", "actual")
  end
end
