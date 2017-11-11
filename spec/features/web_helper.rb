require 'spec_helper'

def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Oleg'
  click_button 'Start'
end
