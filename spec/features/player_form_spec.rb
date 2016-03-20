require 'spec_helper'
require 'capybara'


feature 'Sign in' do
  scenario 'Welcomes players' do
    visit ('/')
    expect(page).to have_content("Welcome Please Enter Your Name")
  end

  scenario 'Players can sign in' do
    sign_in_and_play
    expect(page).to have_content("Simon V HAL")
  end
end

feature 'Duel' do
  scenario 'Player 1 beats player 2' do
    srand(124)
    sign_in_and_play
    play_rock
    click_link "next round"
    expect(page).not_to have_content("0 : 0")
    expect(page).to have_content("1 : 0")
  end
end
