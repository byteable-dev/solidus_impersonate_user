# frozen_string_literal: true

require 'solidus_core'
require 'solidus_support'

module SolidusImpersonateUser
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree

    engine_name 'solidus_impersonate_user'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
