require 'spec_helper'
require 'capybara'

feature 'Start Game' do 
  scenario '1. exit intro screen' do
  visit('/')
  click_button('enter_game')
  expect(page).to have_content('Please enter')
  end

  scenario '2. enter name' do
    visit('/')
    click_button('enter_game')
    fill_in :player1, with: "Pink Lady"
    click_button('Submit')
    expect(page).to have_content('Choose your Weapon:')
  end
end