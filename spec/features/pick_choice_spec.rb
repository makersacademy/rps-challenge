require 'spec_helper'

feature 'Pick choice' do
  scenario 'player chooses Rock to play' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
