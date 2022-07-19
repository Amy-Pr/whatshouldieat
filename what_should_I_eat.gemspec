# frozen_string_literal: true

require_relative "lib/what_should_I_eat/version"

Gem::Specification.new do |spec|
  spec.name = "what_should_I_eat"
  spec.version = WhatShouldIEat::VERSION
  spec.authors = ["amy_pr"]
  spec.email = ["ampreci@gmail.com"]

  spec.summary = "What should I eat?"
  spec.description = "A thing that tells you what to eat when you're hungry."
  spec.homepage = "https://github.com/Amy-Pr/whatshouldieat"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/Amy-Pr/whatshouldieat"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Amy-Pr/whatshouldieat"
  spec.metadata["changelog_uri"] = "https://github.com/Amy-Pr/whatshouldieat"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency 'http'
end
