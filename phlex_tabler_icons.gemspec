Gem::Specification.new do |spec|
  spec.name        = "phlex_tabler_icons"
  spec.version     = "0.1.0"
  spec.summary     = "Tabler Icons ported to Phlex"
  spec.description = "Tabler Icons ported to Phlex"
  spec.authors     = ["Elvinas Predkelis"]
  spec.files       = ["lib/phlex_tabler_icons.rb"]
  spec.homepage    = "https://github.com/elvinaspredkelis/phlex_tabler_icons"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elvinaspredkelis/phlex_tabler_icons"
  spec.metadata["changelog_uri"] = "https://github.com/elvinaspredkelis/phlex_tabler_icons"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{lib}/**/*", "LICENCE", "Rakefile", "README.md"]
  end

  spec.add_dependency "phlex", "~>1.6"

  spec.add_development_dependency "phlexing"
end
