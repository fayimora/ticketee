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

  scenario 'Signing in via form' do
    # User.where(email: 'ticketee@example.com').confirm!
    User.find_by_email('ticketee@example.com').confirm!
    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: 'ticketee@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
    expect(page).to have_content('Signed in successfully')
  end
end
