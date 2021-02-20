describe Game do
  let(:player_class) { class_double(Player, new: player) }
  let(:ai_class)     { class_double(Ai, new: ai) }
  let(:player)       { instance_double(Player) }
  let(:ai)           { instance_double(Ai) }

  subject            { described_class.new('Frank', player_class, ai_class) }

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

  describe '#player' do
    it 'returns the player' do
      expect(subject.player).to be player
    end
  end

  describe '#ai' do
    it 'returns the ai' do
      expect(subject.ai).to be ai
    end
  end
end
