require_relative 'web_helper'

feature '/play' do
  scenario 'player prompted to choose weapon' do
    sign_in_and_play
    expect(page).to have_content('Choose your weapon:')
  end

  scenario 'player is able to choose rock' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  scenario 'player is able to choose paper' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'player is able to choose scissors' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end

  scenario 'enemy is a bot' do
    sign_in_and_play
    expect(page).to have_content('Bored Bot')
  end

  scenario 'player is able to see their score' do
    sign_in_and_play
    expect(page).to have_content('Score:')
  end
end
