lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'corneal/version'

Gem::Specification.new do |spec|
  spec.name        = "corneal-new"
  spec.version     = Corneal::VERSION::STRING
  spec.summary     = "A updated version of the Sinatra app generator."
  spec.description = "Corneal is a Sinatra app generator with Rails-like simplicity, updated for 2021 gems."
  spec.email       = "corinna@flatironschool.com"
  spec.homepage    = "https://github.com/cjbrock/corneal-new"
  spec.authors     = ["Brian Emory, Corinna Brock Moore"]
  spec.licenses    = "MIT"

  spec.executables = ['corneal']

  spec.require_paths = [%q{lib}]

  spec.files = Dir.glob("lib/**/*") +
    [
      "lib/corneal/generators/app/templates/app/models/.gitkeep",
      "lib/corneal/generators/app/templates/public/images/.gitkeep",
      "lib/corneal/generators/app/templates/public/javascripts/.gitkeep"
    ] +
    Dir.glob("spec/**/*") 

  spec.add_runtime_dependency('thor', '~> 1.3')
  spec.add_runtime_dependency('activesupport', '~> 6.1')
  spec.add_development_dependency('bundler', '~> 2.5')
  spec.add_development_dependency('minitest', '~> 5.24')
end
