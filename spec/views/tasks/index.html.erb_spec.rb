require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :title => "Title",
        :status => 1,
        :user => nil,
        :address => "Address",
        :city => "City",
        :zip => "Zip",
        :long_description => "MyText",
        :short_description => "Short Description"
      ),
      Task.create!(
        :title => "Title",
        :status => 1,
        :user => nil,
        :address => "Address",
        :city => "City",
        :zip => "Zip",
        :long_description => "MyText",
        :short_description => "Short Description"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
  end
end
