require 'game'

describe Game do

  subject(:game) { Game.new }

  context 'creating a new game' do
    it 'creates a new game with 0 players' do
      expect(game.players.size).to eq 0
    end
  end

  

end
