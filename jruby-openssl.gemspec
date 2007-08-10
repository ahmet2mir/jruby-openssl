require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = "jruby-openssl"
  s.version = "0.0.3"
  s.author = "Ola Bini"
  s.email = "ola.bini@ki.se"
  s.homepage = "http://jruby-extras.rubyforge.org/"
  s.platform = Gem::Platform::RUBY #should be JAVA
  s.summary = "JRuby Openssl"
  candidates = Dir["lib/bc*.jar"] + Dir["lib/jopenssl.jar"] + Dir["lib/**/*.rb"]
  s.files = candidates.delete_if do |item| item.include?(".svn") || item.include?("rdoc") end
  s.require_path = "lib"
  s.has_rdoc = false
  s.requirements << "Java 1.5"
end

if $0 == __FILE__
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
