require 'spec_helper'

def sign_in
  visit('/')
  fill_in(:player_name, with: 'Player 1')
  click_button("Submit")
end
