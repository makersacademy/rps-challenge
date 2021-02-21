describe Game do
  let(:player_class)   { class_double(Player, new: player) }
  let(:computer_class) { class_double(Computer, new: computer) }
  let(:player)         { instance_double(Player, name: 'Frank') }
  let(:computer)       { instance_double(Computer, name: 'Computer') }

  subject { described_class.new('Frank', player_class, computer_class) }

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

  describe '#computer' do
    it 'returns the computer' do
      expect(subject.computer).to be computer
    end
  end

  describe '#result' do
    context 'when player wins' do
      it 'announces player as winner with rock' do
        allow(player).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :scissors }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player as winner with paper' do
        allow(player).to receive(:move) { :paper }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player as winner with scissors' do
        allow(player).to receive(:move) { :scissors }
        allow(computer).to receive(:move) { :paper }
        expect(subject.result).to eq 'Frank wins!'
      end
    end

    context 'when computer wins' do
      it 'announces computer as winner with scissors' do
        allow(player).to receive(:move) { :paper }
        allow(computer).to receive(:move) { :scissors }
        expect(subject.result).to eq 'Computer wins!'
      end

      it 'announces computer as winne with paper' do
        allow(player).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :paper }
        expect(subject.result).to eq 'Computer wins!'
      end

      it 'announces computer as winner with rock' do
        allow(player).to receive(:move) { :scissors }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq 'Computer wins!'
      end
    end

    context 'when draw' do
      it 'announces draw' do
        allow(player).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq "It's a draw!"
      end
    end
  end
end
