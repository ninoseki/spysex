require_relative 'lib/spyse/version'

Gem::Specification.new do |spec|
  spec.name          = "spysex"
  spec.version       = Spyse::VERSION
  spec.authors       = ["Manabu Niseki"]
  spec.email         = ["manabu.niseki@gmail.com"]

  spec.summary       = 'Spyse API wrapper for Ruby'
  spec.description   = 'Spyse API wrapper for Ruby'
  spec.homepage      = "https://github.com/ninoseki/spysex"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "coveralls_reborn", "~> 0.22"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "vcr", "~> 6.0"
  spec.add_development_dependency "webmock", "~> 3.13"
end
