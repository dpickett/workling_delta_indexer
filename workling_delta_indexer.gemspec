# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{workling_delta_indexer}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Pickett"]
  s.date = %q{2009-03-07}
  s.email = %q{dpickett@enlightsolutions.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/workling_delta", "lib/workling_delta/indexer.rb", "lib/workling_delta/worker.rb", "lib/workling_delta_indexer.rb", "test/test_helper.rb", "test/workling_delta", "test/workling_delta/indexer_test.rb", "test/workling_delta/worker_test.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dpickett/workling_delta_indexer}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<freelancing-god-thinking-sphinx>, [">= 1.1.5"])
    else
      s.add_dependency(%q<freelancing-god-thinking-sphinx>, [">= 1.1.5"])
    end
  else
    s.add_dependency(%q<freelancing-god-thinking-sphinx>, [">= 1.1.5"])
  end
end
