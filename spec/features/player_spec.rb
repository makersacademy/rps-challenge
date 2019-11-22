require 'player'

describe Player do
  feature 'Enter player name' do
  visit('/')
  fill_in :player_name, with: 'Simone'
  click_button 'Submit'
   end
 end
