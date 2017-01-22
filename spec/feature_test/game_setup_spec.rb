require 'spec_helper'

feature 'Homepage' do
  scenario "when visiting the homepage" do
    visit ('/')
    expect(page).to have_content('Rock-Paper-Scissors Game!')
    expect(page).to have_button('Single Player')
    expect(page).to have_button('Multiplayer')
  end
end

feature 'Enter name for single player' do
  scenario 'submitting names' do
    sign_in_and_play_single_player
    expect(page).to have_content('Mike')
  end
end

feature "so I can see who's playing" do
  scenario "I can see the player names" do
    sign_in_and_play_multiplayer
    expect(page).to have_content('Player 1: Mike Player 2: Jilly')
  end
end
