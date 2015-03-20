require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :title => "MyString",
      :status => 1,
      :user => nil,
      :address => "MyString",
      :city => "MyString",
      :zip => "MyString",
      :long_description => "MyText",
      :short_description => "MyString"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"

      assert_select "input#task_address[name=?]", "task[address]"

      assert_select "input#task_city[name=?]", "task[city]"

      assert_select "input#task_zip[name=?]", "task[zip]"

      assert_select "textarea#task_long_description[name=?]", "task[long_description]"

      assert_select "input#task_short_description[name=?]", "task[short_description]"
    end
  end
end
