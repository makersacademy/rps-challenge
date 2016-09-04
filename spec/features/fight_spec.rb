require 'spec_helper'

feature 'fight' do
  scenario 'chooses a weapon' do
  sign_in_and_play
  check('weapon')
  click_button('Fight!')
  expect(page).to have_content('Ben chose rock')
  end


end
