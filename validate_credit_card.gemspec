Gem::Specification.new do |s|
  s.name = %q{validate_credit_card}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Raymond W. Lucke IV"]
  s.date = %q{2011-07-01}
  s.description = %q{Rails validator for credit card numbers.}
  s.email = ["ray@vasaristudio.com"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
    "init.rb",
    "install.rb",
    "lib/validate_credit_card.rb"
  ]
  s.homepage = %q{http://github.com/rwl4/validate_credit_card}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails validator for credit card numbers.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.0"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.0.0"])
  end
end

