require 'spec_helper'

# USER STORY ONE
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Registering to play' do

  scenario 'so a game can include a player, the player can enter their name and see it onscreen' do
    visit('/')
    click_button 'Play!'
    fill_in :player_1_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content('My name is Drago. I defeat all man... Soon I defeat Joe, if he dies... he dies')
  end

end
