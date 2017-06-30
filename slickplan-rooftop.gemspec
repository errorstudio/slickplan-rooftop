# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slickplan/rooftop/version'

Gem::Specification.new do |spec|
  spec.name          = "slickplan-rooftop"
  spec.version       = Slickplan::Rooftop::VERSION
  spec.authors       = ["Ed Jones"]
  spec.email         = ["ed@errorstudio.co.uk"]

  spec.summary       = %q{A gem to integrate Slickplan.com with Rooftop CMS}
  spec.description   = %q{Use Slickplan to create a sitemap, then generate the pages in your Rooftop CMS account.}
  spec.homepage      = "https://www.github.com/errorstudio/slickplan-rooftop"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'slickplan'
  spec.add_dependency 'rooftop'
  spec.add_dependency 'terminal-table'
end
