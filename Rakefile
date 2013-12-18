require 'rubygems'
require "rubygems/package_task"
require 'rake'

Gem::PackageTask.new(eval(File.read("rubygems_allow-pre-releases.gemspec"))) do |pkg|
end

task :default => :test

task :test do
  sh 'rspec spec'
end
