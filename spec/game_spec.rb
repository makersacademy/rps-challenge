require 'game'

describe Game do
  subject(:game) { described_class.new(player, robot) }
  let(:player) { double :player }
  let(:robot) { double :robot }

  describe '#player_wins' do
    it 'sets cases where the player wins' do
      expect(game.player_wins).to eq false
    end
  end

end
