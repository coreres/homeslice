require 'rails_helper'

RSpec.describe "agent_applications/show", type: :view do
  before(:each) do
    @agent_application = assign(:agent_application, AgentApplication.create!(
      :user => nil,
      :status => 1,
      :company_name => "Company Name",
      :company_address => "Company Address",
      :company_city => "Company City",
      :company_zip => "Company Zip",
      :company_state => "Company State",
      :check_payable_to => "Check Payable To",
      :payment_address => "Payment Address",
      :payment_city => "Payment City",
      :payment_zip => "Payment Zip",
      :company_phone => "Company Phone",
      :agent_cell_phone => "Agent Cell Phone",
      :social_security => "Social Security",
      :company_fax => "Company Fax",
      :license_number => "License Number",
      :eo_policy_number => "Eo Policy Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Company Address/)
    expect(rendered).to match(/Company City/)
    expect(rendered).to match(/Company Zip/)
    expect(rendered).to match(/Company State/)
    expect(rendered).to match(/Check Payable To/)
    expect(rendered).to match(/Payment Address/)
    expect(rendered).to match(/Payment City/)
    expect(rendered).to match(/Payment Zip/)
    expect(rendered).to match(/Company Phone/)
    expect(rendered).to match(/Agent Cell Phone/)
    expect(rendered).to match(/Social Security/)
    expect(rendered).to match(/Company Fax/)
    expect(rendered).to match(/License Number/)
    expect(rendered).to match(/Eo Policy Number/)
  end
end
