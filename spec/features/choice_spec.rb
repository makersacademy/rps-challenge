require 'spec_helper'

feature 'will display player choice' do
  scenario 'when choice is selected, it is displayed on the choice page' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'Paper'
  end
end
