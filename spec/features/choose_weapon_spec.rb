require_relative 'web_helper'

feature 'Choose weapon' do
  scenario 'can have a weapon' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'Player 1 chose Rock'
    expect(page).not_to have_content 'Player 1 chose Paper'
  end
end
