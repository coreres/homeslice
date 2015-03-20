json.array!(@agent_applications) do |agent_application|
  json.extract! agent_application, :id, :user_id, :status, :company_name, :company_address, :company_city, :company_zip, :company_state, :check_payable_to, :payment_address, :payment_city, :payment_zip, :company_phone, :agent_cell_phone, :social_security, :company_fax, :license_number, :license_expiration, :eo_policy_number, :eo_expiration
  json.url agent_application_url(agent_application, format: :json)
end
