require './lib/game'
require './app'

describe Game do
  feature 'weapon selection options' do
    scenario 'has weapons in an array' do
      expect(Game::OPTIONS).to eq(['Rock', 'Paper', 'Scissors'])
    end
  end

  feature 'Gameplay' do
    scenario 'Submit rock and win' do
      player_sign_in
      player_move
      visit '/result'
      expect(page).to have_content("The result is ... You won!")
    end
  end
end
