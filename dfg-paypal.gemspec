# 2016-12-12
# vagrant ssh
# cd ./_my/gems/dfg-paypal
# gem build dfg-paypal.gemspec
# gem push dfg-paypal-0.8.2.gem
# https://rubygems.org/gems/dfg-paypal
Gem::Specification.new do |s|
	s.add_dependency "activesupport", ">= 2.3"
	s.add_dependency "rest-client"
	s.add_dependency "attr_required", ">= 0.0.5"
	s.add_development_dependency "rake", ">= 0.8"
	s.add_development_dependency "simplecov"
	s.add_development_dependency "rspec", "< 2.99"
	s.add_development_dependency "fakeweb", ">= 1.3.0"
	s.authors = ["Dmitry Fedyuk"]
	s.description = %q{This gem is used for my Discourse plugins.}
	s.email = "admin@discourse.pro"
	s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.extra_rdoc_files = []
	s.files = `git ls-files`.split("\n")
	s.homepage = "https://github.com/discourse-pro/dfg-paypal"
	# 2016-12-12
	# Иначе при выполнении gem build будет предупреждение: «licenses is empty, but is recommended».
	s.license = "Nonstandard"
	s.name = "dfg-paypal"
	s.require_paths = ["lib"]
	s.rdoc_options = ["--charset=UTF-8"]
	s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
	s.summary = %q{PayPal Express Checkout API Client for Instance, Recurring and Digital Goods Payment.}
	s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.version = File.read(File.join(File.dirname(__FILE__), "VERSION"))
end
