require "spec_helper.rb"
describe "HomePage" do
  it "should have list 'list'" do
    visit "/"
    page.should have_content 'welcom'
  end
end

