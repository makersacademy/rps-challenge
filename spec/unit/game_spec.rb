describe Game do
  let(:player)       { instance_double(Player) }
  let(:player_class) { class_double(Player, new: player) }
  subject            { described_class.new('Frank', player_class) }

  describe '#player' do
    it 'returns the player' do
      expect(subject.player).to be player
    end
  end

  describe '.create' do
    it 'creates a new instance of itself' do
      expect(described_class.create('Frank')).to be_a(described_class)
    end
  end

  describe '.instance' do
    it 'returns the instance from create' do
      game = described_class.create('Frank')
      expect(described_class.instance).to be game
    end
  end
end
