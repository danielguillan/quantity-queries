require './lib/quantity-queries'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = QuantityQueries::VERSION
  s.date = QuantityQueries::DATE

  # Gem Details
  s.name = "quantity-queries"
  s.rubyforge_project = "quantity-queries"
  s.description = %q{Simple item quantity queries mixins for Sass}
  s.summary = %q{Simple item quantity queries mixins for Sass}
  s.authors = ["Daniel Guillan"]
  s.email = ["daniel.guillan@gmail.com"]
  s.homepage = "https://github.com/danielguillan/quantity-queries"

  # LICENSE file
  s.licenses = ['MIT']

  # README file
  s.files = ["README.md"]

  # CHANGELOG
  s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  s.add_dependency("sass",      ["~> 3.4"])
  s.add_dependency("compass",   ["~> 1.0"])
end
