describe Game do
  let(:player_class) { class_double(Player, new: player) }
  let(:ai_class)     { class_double(Ai, new: ai) }
  let(:player)       { instance_double(Player, name: 'Frank') }
  let(:ai)           { instance_double(Ai, name: 'AI') }

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

  describe '#result' do
    context 'when player wins' do
      it 'announces player as winner with rock' do
        allow(player).to receive(:choice) { :rock }
        allow(ai).to receive(:choice) { :scissors }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player as winner with paper' do
        allow(player).to receive(:choice) { :paper }
        allow(ai).to receive(:choice) { :rock }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player as winner with scissors' do
        allow(player).to receive(:choice) { :scissors }
        allow(ai).to receive(:choice) { :paper }
        expect(subject.result).to eq 'Frank wins!'
      end
    end

    context 'when ai wins' do
      it 'announces ai as winner with scissors' do
        allow(player).to receive(:choice) { :paper }
        allow(ai).to receive(:choice) { :scissors }
        expect(subject.result).to eq 'AI wins!'
      end

      it 'announces ai as winne with paper' do
        allow(player).to receive(:choice) { :rock }
        allow(ai).to receive(:choice) { :paper }
        expect(subject.result).to eq 'AI wins!'
      end

      it 'announces ai as winner with rock' do
        allow(player).to receive(:choice) { :scissors }
        allow(ai).to receive(:choice) { :rock }
        expect(subject.result).to eq 'AI wins!'
      end
    end

    context 'when draw' do
      it 'announces draw' do
        allow(player).to receive(:choice) { :rock }
        allow(ai).to receive(:choice) { :rock }
        expect(subject.result).to eq "It's a draw!"
      end
    end
  end
end
