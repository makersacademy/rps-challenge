require 'spec_helper'

feature 'playing a game' do
  before do
    visit('/')
    fill_in :player_1_name, with: 'Chet'
    click_button "3 2 1 Draw!"
  end

  scenario 'options for the game' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Lizard'
    expect(page).to have_content 'Spock'
  end

end
