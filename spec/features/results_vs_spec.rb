require 'spec_helper'

feature 'results (player vs player)' do

  before do
    sign_in_two_players
  end

  scenario 'Player 1 wins' do
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Pop wins!"
  end

  scenario 'Player 2 wins' do
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "Bob wins!"
  end

  scenario 'result is draw if both players choose rock' do
    click_button "Rock"
    click_button "Rock"
    expect(page).to have_content "It's a draw!"
  end

end
