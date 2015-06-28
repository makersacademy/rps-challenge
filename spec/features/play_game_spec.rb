require 'spec_helper'

feature 'Starting a new game' do
  scenario 'user should be able to enter their name' do
    visit '/'
    expect(page).to have_content "Please enter your name"
  end

  scenario 'user can choose between rock, paper or scissors' do
    visit '/playing'
    expect(page).to have_content "Will you choose"
  end

  scenario 'user can only enter rock, paper or scissors' do
    visit '/playing'
    click_button 'Your choice is final!'
    expect(page).to have_content "Invalid choice"
  end
end