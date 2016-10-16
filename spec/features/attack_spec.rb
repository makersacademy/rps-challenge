require 'spec_helper'

feature 'Start the Game' do
  scenario 'Player1 wins' do
    sign_in_and_play
    click_button("Confirmation")
    expect(page).to have_content 'Brian beats Tom'
  end
  scenario 'Rock Paper or Scissors' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end
end
