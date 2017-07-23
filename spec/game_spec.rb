require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two) }
  let(:player_one) { double :player }
  let(:player_two) { double :player }

  describe '#player_one' do
    it 'retrieves the first player' do
      expect(game.player_one).to eq player_one
    end
  end

  describe '#player_two' do
    it 'retrieves the second player' do
      expect(game.player_two).to eq player_two
    end
  end
end
