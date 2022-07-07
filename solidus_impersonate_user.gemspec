# frozen_string_literal: true

require_relative 'lib/solidus_impersonate_user/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_impersonate_user'
  spec.version = SolidusImpersonateUser::VERSION
  spec.authors = ['Rasmus Styrk']
  spec.email = 'styrken@gmail.com'

  spec.summary = 'This gem makes it possible for admins to impersonate another user and see the store in his/her eyes.'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/byteable-dev/solidus_impersonate_user'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.required_ruby_version = Gem::Requirement.new('~> 2.5')

  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.test_files = files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'solidus_core', ['>= 2.0.0', '< 4']
  spec.add_dependency 'solidus_support', '~> 0.5'

  spec.add_development_dependency 'solidus_dev_support', '~> 2.5'
end
