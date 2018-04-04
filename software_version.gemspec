lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'software_version/version'

Gem::Specification.new do |s|
  s.name        = 'software_version'
  s.version     = SoftwareVersion::VERSION
  s.summary     = 'Compare two software versions'
  s.description = 'Compare two software versions with the full pattern for Linux Packages (Centos, Redhat, Arch, Debian Ubuntu) and Windows Applications'
  s.authors     = ['Florian Wininger']
  s.email       = 'fw.centrale@gmail.com'
  s.homepage    = 'https://github.com/fwininger/sofware-version'

  s.license       = 'MIT'

  s.require_paths = ['lib']
  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'bundler', '~> 1.16'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.52'
end