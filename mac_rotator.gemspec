# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mac_rotator/version'

Gem::Specification.new do |gem|
  gem.name          = "mac_rotator"
  gem.version       = MACRotator::VERSION
  gem.authors       = ["Bradley J. Spaulding"]
  gem.email         = ["bspaulding@dataxu.com"]
  gem.description   = %q{A utility to rotate your mac address.}
  gem.summary       = %q{A utility to rotate your mac address.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  ['rake'].each do |gem_name|
    gem.add_development_dependency gem_name
  end
end
