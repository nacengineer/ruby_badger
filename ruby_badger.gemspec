# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_badger/version'

Gem::Specification.new do |spec|
  spec.name        = "ruby_badger"
  spec.version     = RubyBadger::VERSION
  spec.authors     = ["David Southard", "Rob Sanheim", "Jamie Kite"]
  spec.homepage    = "http://github.com/nacengineer/ruby_badger"
  spec.email       = "nacengineer@gmail.com"
  spec.summary     = "Descriptive badges for your app."
  spec.description = "Get a nice, clean badge displaying your Rails
                      Environment or other helpful info. Want to display last
                      deploy date? Or maybe the status of some app wide
                      settings? Throw it in RubyBadger! He cares slightly more
                      than others!"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "rails",   '~> 5.2', '>= 5.2'

  spec.add_development_dependency "bundler", '~> 1.8', ">= 1.8"
  spec.add_development_dependency "rake", '~> 13.0.3', ">= 13.0"

  spec.add_development_dependency 'rspec-rails', "~> 4.0.2", ">= 4.0"
  spec.add_development_dependency 'capybara', "~> 3.35.0", ">= 3.35"
  spec.add_development_dependency 'factory_bot_rails', '~> 6.1.0', ">= 6.1"
  spec.add_development_dependency 'fuubar', '~> 2.5.1', ">= 2.5"
  spec.add_development_dependency 'sass-rails', '~> 6.0', ">= 6.0"
  spec.add_development_dependency 'sprockets', '~> 4.0', "> 4.0"

  spec.test_files    = Dir["spec/**/*"]
end
