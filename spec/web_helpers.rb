require 'spec_helper'

def sign_in
  visit('/')
  click_button("1 PLAYER")
  fill_in(:player_name, with: 'Player 1')
  click_button("Submit")
end
