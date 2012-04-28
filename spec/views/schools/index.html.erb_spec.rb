require 'spec_helper'

describe "schools/index" do
  before(:each) do
    assign(:schools, [
      stub_model(School,
        :name => "Name",
        :program => "Program",
        :admissions_url => "Admissions Url",
        :app_url => "App Url",
        :rank => 1
      ),
      stub_model(School,
        :name => "Name",
        :program => "Program",
        :admissions_url => "Admissions Url",
        :app_url => "App Url",
        :rank => 1
      )
    ])
  end

  it "renders a list of schools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    assert_select "tr>td", :text => "Admissions Url".to_s, :count => 2
    assert_select "tr>td", :text => "App Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
