require 'spec_helper'

describe "terminologies/show" do
  before(:each) do
    @terminology = assign(:terminology, stub_model(Terminology,
      :term => "Term",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Term/)
    rendered.should match(/MyText/)
  end
end
