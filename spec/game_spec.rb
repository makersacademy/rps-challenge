require 'game'

describe Game do

  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player }

  describe 'Attributes' do
    it 'stores the player' do
      expect(game.player).to eq player1
    end
  end

  describe '.create' do
    it 'creates a new instance of Game' do
      expect(described_class.create(player1)).to be_an_instance_of Game
    end
  end

  describe '.instance' do
    it 'returns the instance of Game' do
      described_class.create(player1)
      expect(described_class.instance).to be_an_instance_of Game
    end
  end
end
