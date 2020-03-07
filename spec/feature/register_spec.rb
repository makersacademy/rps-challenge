require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'registering name' do 
    scenario 'register and see my name' do
#   visit '/'
#   fill_in 'name', with: 'Rafa'
#   click_button 'Hit it Bastard!'
  sign_and_play
  expect(page).to have_content('Rafa')
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

