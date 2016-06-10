require 'spec_helper'

def sign_in_and_play
  visit '/'
  fill_in :player1, with: 'Toby'
  click_button :singleplayer
end
