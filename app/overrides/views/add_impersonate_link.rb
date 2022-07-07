# frozen_string_literal: true

Deface::Override.new(
  virtual_path: "spree/admin/users/edit",
  name: "solidus_admin_user_impersonate_link",
  insert_after: "[data-hook='admin_user_edit_general_settings']",
  partial: "spree/admin/users/impersonate_link"
)
