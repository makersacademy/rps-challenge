require 'game'

describe Game do

subject(:game) { described_class.new(player_1, player_2, false)}
let(:player_1) { double :player_1, :hand => 'scissors' }
let(:player_2) { double :player_2, :hand => 'rock' }

  describe '#player_1' do
    it 'returns player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#winner' do
    it 'returns the winner' do
      expect(game.winner).to eq player_2
    end
  end

end
