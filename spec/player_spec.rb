require 'player'

describe Player do
  let(:player) { described_class.new(:Unai) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(player.name).to eq :Unai
    end
  end
  describe '#hand' do
    it 'initializes the hand value as none' do
      expect(player.hand).to eq :none
    end
  end
end
