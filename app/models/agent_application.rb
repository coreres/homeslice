class AgentApplication < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :company_zip, using: :us_zip
  validates_formatting_of :payment_zip, using: :us_zip
  validates_formatting_of :company_phone, using: :us_phone
end
