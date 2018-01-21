require 'player'

describe Player do
  let(:player) { described_class.new("sam") }

  describe '#name' do
    it 'player should store name it is passed' do
      expect(player.name).to eq "sam"
    end
  end

  describe '#move' do
    it 'players move should be stored in move variable ' do
      player.selection(:rock)
      expect(player.move).to eq :rock
    end
  end

end
