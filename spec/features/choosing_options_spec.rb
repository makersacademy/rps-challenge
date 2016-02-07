require 'spec_helper'

feature 'Player adds their name' do
  scenario 'with valid name' do
    sign_in_and_play
    choose("options", option: "rock")
    click_button 'Submit'
    expect(page).to have_content("You chose rock")
  end
end