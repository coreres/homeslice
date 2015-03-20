class CreateAgentApplications < ActiveRecord::Migration
  def change
    create_table :agent_applications do |t|
      t.references :user, index: true
      t.integer :status
      t.string :company_name
      t.string :company_address
      t.string :company_city
      t.string :company_zip
      t.string :company_state
      t.string :check_payable_to
      t.string :payment_address
      t.string :payment_city
      t.string :payment_zip
      t.string :company_phone
      t.string :agent_cell_phone
      t.string :social_security
      t.string :company_fax
      t.string :license_number
      t.date :license_expiration
      t.string :eo_policy_number
      t.date :eo_expiration

      t.timestamps
    end
  end
end
