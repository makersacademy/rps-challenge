require 'spec_helper'
require 'web_helpers'

# USER STORY ONE
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Registering to play' do

  scenario 'so a game can include a player, the player can enter their name and see it onscreen.' do
    sign_in
    expect(page).to have_content('My name is Drago. I defeat all man... Soon I defeat Joe Wroe, if he dies... he dies.')
  end

end

# USER STORY TWO
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Playing the game' do

  scenario 'so a player can select an attack, a page needs to allow choice between Rock, Paper and Scissors' do
    sign_in
    continue_to_rps_selector
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
    find_button('Select')
  end

  scenario 'so a player can battle Drago, choosing their attack needs to show both player and Drago choices' do
    sign_in
    continue_to_rps_selector
    click_button('Select')
    expect(page).to have_content('You choose Rock!')
    expect(page).to have_content('Drago chose ')
  end
end
