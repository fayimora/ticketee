require 'spec_helper'
describe "Random" do
 
  it 'has a valid title' do
    visit root_path
    title = "TextMate 2 - Projects - Ticketee"
    # page.should have_selector('title', text: title)
    find('title').native.text.should have_content("TextMate 2 - Projects - Ticketee")
  end
 
end
