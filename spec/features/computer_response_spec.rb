require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
# The game will choose a random option
feature 'computer responds to player' do

  scenario 'computer turn generated on results page' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content "Computer chose"
  end

end
