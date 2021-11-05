require 'game'

describe Game do
  subject(:game) { Game.new(player1, computer) }
  let(:player1) { double :player }
  let(:computer) { double :computer }

  describe '#player1' do
    it 'should have player1' do
      expect(game.player).to eq player1
    end
  end
  
  describe '#player2' do
    it 'should have player2' do
      expect(game.computer).to eq computer
    end
  end
end