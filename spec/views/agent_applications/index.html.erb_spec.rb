require 'rails_helper'

RSpec.describe "agent_applications/index", type: :view do
  before(:each) do
    assign(:agent_applications, [
      AgentApplication.create!(
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
      ),
      AgentApplication.create!(
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
      )
    ])
  end

  it "renders a list of agent_applications" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Address".to_s, :count => 2
    assert_select "tr>td", :text => "Company City".to_s, :count => 2
    assert_select "tr>td", :text => "Company Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Company State".to_s, :count => 2
    assert_select "tr>td", :text => "Check Payable To".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Address".to_s, :count => 2
    assert_select "tr>td", :text => "Payment City".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Company Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Agent Cell Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Social Security".to_s, :count => 2
    assert_select "tr>td", :text => "Company Fax".to_s, :count => 2
    assert_select "tr>td", :text => "License Number".to_s, :count => 2
    assert_select "tr>td", :text => "Eo Policy Number".to_s, :count => 2
  end
end
