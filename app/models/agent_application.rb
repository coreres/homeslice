class AgentApplication < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :company_zip, using: :us_zip
  validates_formatting_of :payment_zip, using: :us_zip
  validates_formatting_of :company_phone, using: :us_phone
  validates_formatting_of :agent_cell_phone, using: :us_phone
  validates_formatting_of :social_security, using: :ssn
  validates_formatting_of :company_fax, using: :us_phone
end
