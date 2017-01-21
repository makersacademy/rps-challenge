require 'spec_helper'

def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Mike'
  click_button 'submit'
end

def choose_rock
  sign_in_and_play
  click_button ('Rock')
end
