require 'spec_helper'

feature 'fight' do
  scenario 'chooses a weapon' do
  sign_in_and_play
  check('rock')
  click_button('Fight!')
  expect(page).to have_content('Ben\'s weapon beat the computer\'s!')
  end
end
