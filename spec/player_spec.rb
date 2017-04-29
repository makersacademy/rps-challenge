require 'player'

describe Player do
  let(:player) { described_class.new(:Unai) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(player.name).to eq :Unai
    end
  end
  describe '#hand' do
    it 'initializes the hand value as 0' do
      expect(player.hand).to eq 0
    end
  end
  describe '#rock' do
    it 'changes the value of hand to one' do
      player.rock
      expect(player.hand).to eq 1
    end
  end
  describe '#paper' do
    it 'changes the value of hand to two' do
      player.paper
      expect(player.hand).to eq 2
    end
  end
  describe '#scissors' do
    it 'changes the valuer of hand to three' do
      player.scissors
      expect(player.hand).to eq 3
    end
  end
end
