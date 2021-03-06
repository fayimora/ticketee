require 'spec_helper'

feature 'Signing Up' do
  scenario 'Successful sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: 'user@ticketee.com'
    Capybara.exact = true
    fill_in '* Password', with: 'password'
    fill_in '* Password confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_content('Please open the link to activate your account.')
  end
end
