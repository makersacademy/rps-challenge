require 'game'

describe Game do
  
  subject(:game) { described_class.new(player1) }
  let(:player1) do
    player1 = double(player1)
    allow(player1).to receive(:name) { 'Momo' }
    player1
  end
  
  describe 'attributes' do
    it 'receives player as an argument' do
      expect(game.player).to eq player1
    end
  end
  
  describe '#create_new_game' do
    it 'creates a new instance of the game' do
      Game.create_new_game(player1)
      expect(Game.game_instance).to be_an_instance_of(Game)
    end
  end
  
  
end
