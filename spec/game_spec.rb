require 'game'

describe Game do
  
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) do
    player1 = double(player1)
    allow(player1).to receive(:name) { 'Momo' }
    player1
  end
  
  let(:player2) do
    player2 = double(player2)
    allow(player2).to receive(:name) { 'Computer' }
    player2
  end
  
  describe 'attributes' do
    it 'receives player as an argument' do
      expect(game.player1).to eq player1
    end
  end
  
  describe '#create_new_game' do
    it 'creates a new instance of the game' do
      Game.create_new_game(player1, player2)
      expect(Game.game_instance).to be_an_instance_of(Game)
    end
  end
  
  
end
