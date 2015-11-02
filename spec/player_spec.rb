require 'player'

describe Player do 
  subject(:player) { described_class.new(name) }
  let(:name) { 'Bob' }

  context '#initialization' do
    it 'has a name' do
      expect(player.name).to eq name
    end
  end

  context '#selection of hand gestures' do
    it 'can be a shape Rock' do
      allow(player).to receive(:shape).and_return(:rock)
      expect(player.shape).to eq :rock
    end

    it 'can be a shape Paper' do
      allow(player).to receive(:shape).and_return(:paper)
      expect(player.shape).to eq :paper
    end

    it 'can be a shape Scissors' do
      allow(player).to receive(:shape).and_return(:scissors)
      expect(player.shape).to eq :scissors
    end
  end
end
