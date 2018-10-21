require 'spec_helper'

feature 'B - Accepting names of the players' do
  scenario 'Submitting names via text boxes' do
    sign_in_and_player_number
    accept_player_names
    expect(page).to have_content 'John vs. Jane'
  end

  scenario 'Player 2 default value  = Computer' do
    sign_in_and_player_number
    fill_in :player1, with: "John"
    click_button "submit"
    expect(page).to have_content 'John vs. Computer'
  end

end

#Feature / scenario is in Capybara
