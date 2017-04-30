require_relative 'web_helper'

feature '/play' do
  scenario 'player prompted to choose weapon' do
    sign_in_and_play
    expect(page).to have_content('Choose your weapon:')
  end

  scenario 'player gets to choose a weapon' do
    sign_in_and_play
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
