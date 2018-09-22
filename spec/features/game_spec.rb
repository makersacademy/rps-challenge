require './lib/game'
require './app'

describe Game do
  feature 'weapon selection options' do
    scenario 'has weapons in an array' do
      expect(Game::OPTIONS).to eq(['Rock', 'Paper', 'Scissors'])
    end
  end
end
