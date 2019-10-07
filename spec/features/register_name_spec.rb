require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'allows player to register' do
  scenario 'player can enter and see his name before playing' do
    visit('/')
    fill_in :player_name, with: 'Itachi'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Itachi!'
  end

end
