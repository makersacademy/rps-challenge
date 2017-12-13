require 'spec_helper'

def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Oleg'
  fill_in :player2, with: 'Enemy'
  click_button 'Start'
end
