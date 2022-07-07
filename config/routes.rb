# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  get "/admin/users/:user_id/impersonate", to: "solidus_impersonate_user/impersonate#impersonate", as: :impersonate_user
end
