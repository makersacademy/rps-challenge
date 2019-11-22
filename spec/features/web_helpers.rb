require './spec/spec_helper.rb'

def enter_and_play
  visit('/')
  fill_in :player_1_name, with: 'Rich'
  display :cpu, with: 'CPU'
  click_button 'Submit' 
end
