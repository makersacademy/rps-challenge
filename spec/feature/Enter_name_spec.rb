require './app.rb'
require 'spec_helper.rb'

feature 'Player can enter their name' do
  scenario 'player enters the name' do
    visit('/')
    fill_in :player_name, with: "Maria"
    click_button "Start the Game!"
    expect(page).to have_content("Maria")
  end
end
