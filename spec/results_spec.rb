require 'results'

describe Results do
  subject(:results) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#umpire' do
    it 'calculates who won' do
      allow(computer).to receive(:pc_move).and_return("scissors")
      allow(player).to receive(:move).and_return("rock")
      expect(results.umpire).to eq "Rock beats scissors: You rule supreme!"
    end
  end
end
