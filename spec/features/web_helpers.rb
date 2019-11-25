require './spec/spec_helper.rb'
def enter_and_play
  visit('/')
  fill_in :player_1, with: 'Dave'
  fill_in :cpu, with: 'Cpu'
  click_button 'Submit'
end
