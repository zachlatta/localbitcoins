require File.expand_path('../lib/localbitcoins/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "localbitcoins"
  s.version     = LocalBitcoins::VERSION.dup
  s.summary     = "LocalBitcoins API wrapper"
  s.description = "Ruby wrapper for the LocalBitcoins API"
  s.homepage    = "http://github.com/pemulis/localbitcoins"
  s.authors     = ["John Shutt", "Will Newman", "Albert Brown", "Maros Hluska"]
  s.email       = ["john.d.shutt@gmail.com","will.newman@rutgers.edu", "albert_brown@brown.edu", "me@mhluska.com"]
  s.license     = "MIT"
  
  s.add_development_dependency 'rspec',     '~> 2.13'
  s.add_development_dependency 'webmock',   '~> 1.11'
  
  s.add_runtime_dependency 'json',          '~> 1.8'
  s.add_runtime_dependency 'rest-client',   '~> 1.6'
  s.add_runtime_dependency 'hashie',        '~> 2.0.2'
  s.add_runtime_dependency 'activesupport', '~> 5'
  s.add_runtime_dependency 'oauth2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.require_paths = ["lib"]
end
