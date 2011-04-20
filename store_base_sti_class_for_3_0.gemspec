# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{store_base_sti_class_for_3_0}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Kmiec"]
  s.date = %q{2011-04-19}
  s.description = %q{
    ActiveRecord has always stored the base class in polymorphic _type columns when using STI. This can have non-trivial
    performance implications in certain cases. This gem adds 'store_base_sti_class' configuration options which controls
    whether ActiveRecord will store the base class or the actual class. Default to true for backwards compatibility.
  }
  s.email = %q{paul.kmiec@appfolio.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/store_base_sti_class_for_3_0.rb",
    "store_base_sti_class_for_3_0.gemspec",
    "test/connection.rb",
    "test/helper.rb",
    "test/models.rb",
    "test/schema.rb",
    "test/test_store_base_sti_class_for_3_0.rb"
  ]
  s.homepage = %q{http://github.com/pkmiec/store_base_sti_class_for_3_0}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Modifies ActiveRecord 3.0.x with the ability to store the actual class (instead of the base class) in polymorhic _type columns when using STI}
  s.test_files = [
    "test/connection.rb",
    "test/helper.rb",
    "test/models.rb",
    "test/schema.rb",
    "test/test_store_base_sti_class_for_3_0.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.5"])
      s.add_runtime_dependency(%q<mysql2>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3.0.5"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3.0.5"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

