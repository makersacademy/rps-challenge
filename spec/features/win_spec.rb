require 'spec_helper'
require 'computer'

feature 'Player adds their name' do
  scenario 'with valid name' do
    sign_in_and_play
    srand(3)
    choose("options", option: "rock")
    click_button 'Submit'
    expect(page).to have_content("Your opponent chose scissors")
    expect(page).to have_content("You win!")
  end
end