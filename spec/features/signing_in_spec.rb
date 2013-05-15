require 'spec_helper'

feature 'Signing in' do
  before do
    FactoryGirl.create(:user, :email => 'ticketee@example.com')
  end

  scenario 'Signing in via confirmation' do
    open_email 'ticketee@example.com', with: /Confirmation/
    click_first_link_in_email
    expect(page).to have_content("Your account was successfully confirmed.")
    expect(page).to have_content("Signed in as ticketee@example.com")
  end
end
