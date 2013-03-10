require 'spec_helper.rb'

feature "Deleting Projects" do
  before do
    FactoryGirl.create(:project, name: "TextMate 2")
    visit '/'
    click_link "TextMate 2"
    click_link "Delete Project"
  end

  scenario "Deleting a project" do
    expect(page).to have_content("Project has been deleted")

    visit '/'
    expect(page).to_not have_content("TextMate 2")
  end
end
