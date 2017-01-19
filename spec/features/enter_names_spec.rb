require_relative 'web_helper'

feature 'Enter names' do
  scenario 'singleplayer submitting names' do
    single_sign_in_and_play
    expect(page).to have_content 'Player 1'
    expect(page).not_to have_content 'Player 2'
  end

  scenario 'multiplayer submitting names' do
    multi_sign_in_and_play
    expect(page).to have_content 'Player 1'
    expect(page).to have_content 'Player 2'
  end
end
