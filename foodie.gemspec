require_relative 'lib/foodie/version'

Gem::Specification.new do |spec|
  spec.name          = "foodie-nest"
  spec.version       = Foodie::VERSION
  spec.authors       = ["Suraj Shende"]
  spec.email         = ["surajshende247@gmail.com"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "activesupport", "~> 4.2.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"

  spec.summary       = "This is foodie Gem"
  spec.description   = "We call our gem foodie because this gem is going to do a couple of things around food, such as portraying them as either Delicious! or Gross!. Stay tuned."
  spec.homepage      = "https://github.com/surajshende247/foodie"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/surajshende247/foodie"
  spec.metadata["changelog_uri"] = "https://github.com/surajshende247/foodie"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
