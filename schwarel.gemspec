# frozen_string_literal: true

require_relative "lib/schwarel/version"

Gem::Specification.new do |spec|
  spec.name = "schwarel"
  spec.version = Schwarel::VERSION
  spec.authors = ["Nick Schwaderer"]
  spec.email = ["nick.schwaderer@shopify.com"]
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.summary = "Opinionated Arel"
  spec.description = "Opinionated Arel"
  spec.homepage = "https://schwarel.github.io"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Schwad/schwarel"
  spec.metadata["changelog_uri"] = "https://github.com/Schwad/schwarel/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency "activerecord", ">= 7.0.4"
  # spec.add_dependency "zeitwerk"
end
