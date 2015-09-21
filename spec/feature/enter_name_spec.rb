require 'spec_helper'

feature 'it asks you to enter your name' do
  scenario 'add new user' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'no name given, ask again' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content("Please enter your name")
  end

  scenario 'user already logged in' do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    visit '/'
    expect(page).to have_content("Hello Bob")
  end

end
