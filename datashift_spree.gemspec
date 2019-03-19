# require 'rake'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'datashift_spree'
  s.version = '0.6.0'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Statter"]
  s.description = "Comprehensive Excel/CSV import/export for Spree, Products,Images, any model with full associations"
  s.email = "rubygems@autotelik.co.uk"
  
  tmp_str = Dir.glob("{lib}/**/*")
  tmp_str |= ["datashift_spree.thor", 
        "README.markdown",
        "datashift_spree.gemspec",
        'VERSION', 
        "LICENSE.txt"]

  ignore_fn = ["rdoc", "nbproject", "fixtures", ".log", ".contrib" ]
  
  ignore_fn.each do |ignore|
    tmp_str.reject! {|fn| File.fnmatch?(ignore, fn)}
  end

  s.files = tmp_str.to_a
  
  s.test_files = Dir.glob(["{spec}/*"])
  
  s.homepage = "http://github.com/autotelik/datashift_spree"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Product and image import/export for Spree from Excel/CSV"

  s.add_runtime_dependency 'rails', '>= 4.2'
  s.add_runtime_dependency 'datashift'
  s.add_runtime_dependency 'mechanize', '~> 2.6', '>= 2.6.0'

  # should work with any version of spree so  leave it to the client app to define
end

