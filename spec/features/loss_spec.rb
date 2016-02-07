require 'spec_helper'
require 'computer'

feature 'Player adds their name' do
  scenario 'with valid name' do
    sign_in_and_play
    srand(1)
    choose("options", option: "rock")
    click_button 'Submit'
    expect(page).to have_content("Your opponent chose paper")
    expect(page).to have_content("You lose!")
  end
end