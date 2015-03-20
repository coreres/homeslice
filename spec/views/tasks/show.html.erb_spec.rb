require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "Title",
      :status => 1,
      :user => nil,
      :address => "Address",
      :city => "City",
      :zip => "Zip",
      :long_description => "MyText",
      :short_description => "Short Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Short Description/)
  end
end
