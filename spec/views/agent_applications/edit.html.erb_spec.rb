require 'rails_helper'

RSpec.describe "agent_applications/edit", type: :view do
  before(:each) do
    @agent_application = assign(:agent_application, AgentApplication.create!(
      :user => nil,
      :status => 1,
      :company_name => "MyString",
      :company_address => "MyString",
      :company_city => "MyString",
      :company_zip => "MyString",
      :company_state => "MyString",
      :check_payable_to => "MyString",
      :payment_address => "MyString",
      :payment_city => "MyString",
      :payment_zip => "MyString",
      :company_phone => "MyString",
      :agent_cell_phone => "MyString",
      :social_security => "MyString",
      :company_fax => "MyString",
      :license_number => "MyString",
      :eo_policy_number => "MyString"
    ))
  end

  it "renders the edit agent_application form" do
    render

    assert_select "form[action=?][method=?]", agent_application_path(@agent_application), "post" do

      assert_select "input#agent_application_user_id[name=?]", "agent_application[user_id]"

      assert_select "input#agent_application_status[name=?]", "agent_application[status]"

      assert_select "input#agent_application_company_name[name=?]", "agent_application[company_name]"

      assert_select "input#agent_application_company_address[name=?]", "agent_application[company_address]"

      assert_select "input#agent_application_company_city[name=?]", "agent_application[company_city]"

      assert_select "input#agent_application_company_zip[name=?]", "agent_application[company_zip]"

      assert_select "input#agent_application_company_state[name=?]", "agent_application[company_state]"

      assert_select "input#agent_application_check_payable_to[name=?]", "agent_application[check_payable_to]"

      assert_select "input#agent_application_payment_address[name=?]", "agent_application[payment_address]"

      assert_select "input#agent_application_payment_city[name=?]", "agent_application[payment_city]"

      assert_select "input#agent_application_payment_zip[name=?]", "agent_application[payment_zip]"

      assert_select "input#agent_application_company_phone[name=?]", "agent_application[company_phone]"

      assert_select "input#agent_application_agent_cell_phone[name=?]", "agent_application[agent_cell_phone]"

      assert_select "input#agent_application_social_security[name=?]", "agent_application[social_security]"

      assert_select "input#agent_application_company_fax[name=?]", "agent_application[company_fax]"

      assert_select "input#agent_application_license_number[name=?]", "agent_application[license_number]"

      assert_select "input#agent_application_eo_policy_number[name=?]", "agent_application[eo_policy_number]"
    end
  end
end
