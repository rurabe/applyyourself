require 'spec_helper'

describe "schools/show" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "Name",
      :program => "Program",
      :admissions_url => "Admissions Url",
      :app_url => "App Url",
      :rank => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Program/)
    rendered.should match(/Admissions Url/)
    rendered.should match(/App Url/)
    rendered.should match(/1/)
  end
end
