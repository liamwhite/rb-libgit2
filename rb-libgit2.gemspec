$:.unshift File.dirname(__FILE__)

require 'lib/git2/version'

Gem::Specification.new do |s|
  s.name        = 'rb-libgit2'
  s.version     = Git2::VERSION
  s.date        = '2019-02-27'
  s.summary     = "libgit2 for ruby"
  s.description = "JRuby-compatible bindings for libgit2"
  s.authors     = ["Liam P. White"]
  s.email       = 'liamwhite@users.noreply.github.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/liamwhite/rb-libgit2'
  s.license     = 'Nonstandard'
end
