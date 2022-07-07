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

    ## Add views to load path
    config.after_initialize do
      my_engine_root = SolidusImpersonateUser::Engine.root.to_s
      paths = ActionController::Base.view_paths.collect{|p| p.to_s}
      paths = paths.insert(paths.index(my_engine_root + '/app/views'))
      ActionController::Base.view_paths = paths
    end
  end
end
