require_relative 'lib/onc_certification_g10_test_kit/version'

Gem::Specification.new do |spec|
  spec.name          = 'onc_certification_g10_test_kit'
  spec.version       = ONCCertificationG10TestKit::VERSION
  spec.authors       = ['Stephen MacVicar']
  spec.email         = ['inferno@groups.mitre.org']
  spec.summary       = 'ONC Certification (g)(10) Test Kit'
  spec.description   = 'ONC Certification (g)(10) Standardized API for Patient and Population Services Test Kit'
  spec.homepage      = 'https://github.com/onc-healthit/onc-certification-g10-test-kit'
  spec.license       = 'Apache-2.0'
  spec.add_runtime_dependency 'bloomer', '~> 1.0.0'
  spec.add_runtime_dependency 'colorize', '~> 0.8.1'
  spec.add_runtime_dependency 'inferno_core', '>= 0.3.11'
  spec.add_runtime_dependency 'json-jwt', '~> 1.13.0'
  spec.add_runtime_dependency 'mime-types', '~> 3.4.0'
  spec.add_runtime_dependency 'ndjson', '~> 1.0.0'
  spec.add_runtime_dependency 'rubyzip', '~> 2.3.2'
  spec.add_runtime_dependency 'smart_app_launch_test_kit', '0.1.7'
  # spec.add_runtime_dependency 'tls_test_kit', '0.1.1'
  spec.add_runtime_dependency 'us_core_test_kit', '0.3.1'
  spec.add_development_dependency 'database_cleaner-sequel', '~> 1.8'
  spec.add_development_dependency 'factory_bot', '~> 6.1'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'webmock', '~> 3.11'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.files = [
    Dir['lib/**/*.rb'],
    Dir['lib/**/*.json'],
    Dir['lib/**/*.yml'],
    'LICENSE'
  ].flatten

  spec.require_paths = ['lib']
end
