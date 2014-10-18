source "http://rubygems.org"

if ENV.key?('PUPPET_VERSION')
  puppetversion = "#{ENV['PUPPET_VERSION']}"
else
  puppetversion = ['>= 3.0']
end

gem 'rake'
gem 'puppet-lint', '>= 0.3.2'
gem 'rspec-puppet', '>= 0.1.5'
gem 'puppet', puppetversion
