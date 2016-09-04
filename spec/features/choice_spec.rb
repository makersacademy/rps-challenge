require 'spec_helper'

feature 'choosing weapon' do
  scenario 'saves choice' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content 'You chose SCISSORS'
  end
end
