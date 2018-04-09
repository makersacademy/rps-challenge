require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player)   { double :player }
  let(:computer) { double :computer }

  describe '#computer_move' do
    it 'gets a computer move' do
      allow(game).to receive(:computer_move).and_return :rock
      expect(game.computer_move).to eq :rock
    end
  end

  describe '#player_move' do
    it 'gets the player move' do
      allow(game.player).to receive(:move).and_return :rock
      expect(game.player.move).to eq :rock
    end
  end


end
