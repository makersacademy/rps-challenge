require 'game'

describe Game do

  let(:player_class)   { class_double(Player, new: player) }
  let(:player)         { instance_double(Player, name: 'Jason') }

  subject { described_class.new('Jason', player_class) }

  describe '.create' do
    it 'creates a new instance of self' do
      expect(described_class.create('Jason')).to be_a(described_class)
    end
  end

  describe '.instance' do
    it 'returns the instance after create' do
      game = described_class.create('Jason')
      expect(described_class.instance).to be game
    end
  end

  describe '#player1' do
    it 'returns player1' do
      expect(subject.player).to be player
    end
  end
end
