require_relative 'lib/poser/version'

Gem::Specification.new do |spec|
  spec.name          = "poserbot"
  spec.version       = Poser::VERSION
  spec.authors       = ["Joseph Karnafel", "Alex Goodwin", "Adam Mansell", "Ophelia Swen"]
  spec.email         = ["josephkarnafel@gmail.com"]

  spec.summary       = %q{A ruby gem which randomly generates fake user comment data.}
  spec.description   = %q{This gem is meant to be used for seeding databases in applications with user comment functionality. Poser achieves this by creating 'dummy' phrases/sentences.}
  spec.homepage      = "https://rubygems.org/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Joebenitus/poser_gem"
  spec.metadata["changelog_uri"] = "https://github.com/Joebenitus/poser_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler"
end