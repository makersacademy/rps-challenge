require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player)   { double :player }
  let(:computer) { double :computer }

  describe '#computer_move' do
    it 'gets a computer move' do
      allow(computer).to receive(:move).and_return :rock
      expect(game.computer_move).to eq :rock
    end
  end


end
