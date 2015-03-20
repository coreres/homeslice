class AgentApplication < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :company_zip, using: :us_zip
end
