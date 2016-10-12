source "https://rubygems.org"

group :test do
  gem "rake", '10.5.0'
  gem "puppet", ENV['PUPPET_GEM_VERSION'] || '~> 4.2.1'
  gem "rspec", '< 3.2.0'
  gem "rspec-puppet", '2.4.0'
  gem "puppetlabs_spec_helper", '1.1.1'
  gem "metadata-json-lint", '0.0.11'
  gem "rspec-puppet-facts", '1.6.1'
  gem 'rubocop', '0.33.0'
  gem 'simplecov', '0.11.2'
  gem 'simplecov-console', '0.3.0'

  gem "puppet-lint-absolute_classname-check"
  gem "puppet-lint-leading_zero-check"
  gem "puppet-lint-trailing_comma-check"
  gem "puppet-lint-version_comparison-check"
  gem "puppet-lint-classes_and_types_beginning_with_digits-check"
  gem "puppet-lint-unquoted_string-check"
  gem 'listen', '3.0.6'
end

group :development do
  gem "travis"
  gem "travis-lint"
  gem "puppet-blacksmith"
  gem "guard-rake"
end

group :system_tests do
  gem "beaker", '< 3.1.0'
  gem "beaker-rspec"
  gem "beaker-puppet_install_helper"
end
