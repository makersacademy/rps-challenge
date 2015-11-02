require 'spec_helper'

def sign_in_and_p1_select_rock
  visit('/')
  fill_in(:p1_name, with: 'Andy')
  fill_in(:p2_name, with: 'Leigh-Ann')
  click_button 'Submit'
  click_button 'Rock'
end