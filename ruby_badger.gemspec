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

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake"

  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'factory_girl_rails'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'sass-rails'

  spec.test_files    = Dir["spec/**/*"]
end
