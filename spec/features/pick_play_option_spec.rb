require 'spec_helper'

feature 'pick play option' do
 scenario 'pick rock' do
  sign_in_and_play
  click_button 'Rock'
  expect(page). to have_content "You picked Rock"
 end
end



