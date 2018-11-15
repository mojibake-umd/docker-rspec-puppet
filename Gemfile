source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :test do
  gem "rake"
  gem "puppet", ENV['PUPPET_GEM_VERSION'] || '~> 4.10.8'
  gem "rspec"
  gem "rspec-puppet"
  gem "puppetlabs_spec_helper"
  gem "metadata-json-lint"
  gem "rspec-puppet-facts"
  gem 'simplecov', '>= 0.11.0'
  gem 'simplecov-console'
  gem 'semantic_puppet'

  gem "puppet-lint-absolute_classname-check"
  gem "puppet-lint-leading_zero-check"
  gem "puppet-lint-trailing_comma-check"
  gem "puppet-lint-version_comparison-check"
  gem "puppet-lint-classes_and_types_beginning_with_digits-check"
  gem "puppet-lint-unquoted_string-check"
  gem 'puppet-lint-resource_reference_syntax'

  gem 'json_pure', '<= 2.0.1' if RUBY_VERSION < '2.0.0'

  if RUBY_VERSION < '2.2.0'
    gem "rubocop", "< 0.60.0"
  else
    # rubocop:disable Bundler/DuplicatedGem
    gem "rubocop"
    # rubocop:enable Bundler/DuplicatedGem
  end
end

group :development do
  gem "puppet-blacksmith"
  gem "guard-rake" if RUBY_VERSION >= '2.2.5' # per dependency https://rubygems.org/gems/ruby_dep
  gem "listen", "~> 3.0.0"
end

group :system_tests do
  if RUBY_VERSION < '2.2.0'
    gem "beaker", "< 3.0.0"
    gem "beaker-rspec", "< 6.0"
  else
    # rubocop:disable Bundler/DuplicatedGem
    gem "beaker"
    gem "beaker-rspec"
    # rubocop:enable Bundler/DuplicatedGem
  end
  gem "beaker-puppet_install_helper"
end
