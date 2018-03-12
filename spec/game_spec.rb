require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Frank', choice: 'choice' }
  let(:computer) { double :computer, choice: 'choice' }

  describe '#player' do
    it 'registers a player in the game' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'registers a computer player' do
      expect(game.computer).to eq computer
    end
  end

  describe '#start' do
    it 'starts a new game' do
      described_class.create(player, computer)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end
end
