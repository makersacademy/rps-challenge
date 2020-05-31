require 'player'

describe Player do
  let(:name) { 'Steve' }
  let(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'is expected to respond to #new with 1 argument' do
      expect(described_class).to respond_to(:new).with(1).argument
    end
  end

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq name
    end
  end

  describe '#move' do
    it 'can be assigned a move and returns it' do
      player.move = :rock
      expect(player.move).to eq :rock
    end

    it 'raises an error when an invalid move is assigned' do
      expect { player.move = "" }.to raise_error("Invalid move assignment in Player class")
    end
  end
end
