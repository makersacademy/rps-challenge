require_relative 'web_helper'

feature '/play' do
  scenario 'player can choose weapon' do
    sign_in_and_play
    expect(page).to have_content('Choose your weapon:')
  end
end
