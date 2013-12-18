# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubygems_allow-pre-releases/version"

Gem::Specification.new do |s|
  s.name = "rubygems_allow-pre-releases"
  s.version = Rubygems::PreReleases::VERSION
#  s.version = "#{s.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  s.authors = ["Aaron Moses"]
  s.homepage = "https://github.com/zebardy/rubygems_allow-pre-releases"
  s.licenses = ["MIT"]
  s.summary = %q{Enable pre release version numbers in older versions of rubygems}
  s.description = %q{Overrides the regular expression used to parse gem version strings to allow for pre release version strings in older versions of rubygems}

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_development_dependency "rubygems", ['< 2.1.0']
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-core"
  s.add_development_dependency "mime-types", '1.25' if RUBY_VERSION < "1.9"
  s.add_development_dependency "coveralls"
end
