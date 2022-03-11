require 'game'

describe Game do

  subject(:game) { Game.new }

  context 'creating a new game' do
    it 'creates a new game with 0 players' do
      expect(game.players.size).to eq 0
    end
  end

  context 'adding a new player' do
    it 'increases the player array by 1' do
      expect { game.new_player('Bob') }.to change { game.players.count }.by(1) 
    end
  end
end
