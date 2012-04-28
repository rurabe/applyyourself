require 'spec_helper'

describe "schools/new" do
  before(:each) do
    assign(:school, stub_model(School,
      :name => "MyString",
      :program => "MyString",
      :admissions_url => "MyString",
      :app_url => "MyString",
      :rank => 1
    ).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path, :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
      assert_select "input#school_program", :name => "school[program]"
      assert_select "input#school_admissions_url", :name => "school[admissions_url]"
      assert_select "input#school_app_url", :name => "school[app_url]"
      assert_select "input#school_rank", :name => "school[rank]"
    end
  end
end
