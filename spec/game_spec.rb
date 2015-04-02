require 'game'

describe Game do
  let(:player1) { double :player, name: 'bob' }
  let(:player2) { double :player, name: 'john' }
  let(:game) { described_class.new player1, player2 }
  context 'when created' do
    it 'has a player 1' do
      expect(game.player1.name).to eq 'bob'
    end
    it 'has a player 2' do
      expect(game.player2.name).to eq 'john'
    end
  end
end