ActiveAdmin.register AgentApplication do
  permit_params :status, :company_name, :company_address, :company_city, :company_zip, :company_state, :check_payable_to, :payment_address, :payment_city, :payment_zip, :company_phone, :agent_cell_phone, :social_security, :company_fax, :license_number, :license_expiration, :eo_policy_number, :eo_expiration


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
