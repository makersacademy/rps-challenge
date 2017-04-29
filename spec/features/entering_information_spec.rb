require './rps_game.rb'

feature 'Entering name information' do
  scenario 'Player can enter their name' do
    visit "/"
    fill_in :player_name, with: 'The Donald'
    click_button "Submit"
  end
end
