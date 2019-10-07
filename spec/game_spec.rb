require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#player_2_move' do
    it 'returns a string' do
      expect(game.player_2_move).to be_an_instance_of(String)
    end
  end
end
