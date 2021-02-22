describe Game do
  let(:player_class)   { class_double(Player, new: player1) }
  let(:computer_class) { class_double(Computer, new: computer) }
  let(:player1)         { instance_double(Player, name: 'Frank') }
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

  describe '#player1' do
    it 'returns player1' do
      expect(subject.player1).to be player1
    end
  end

  describe '#player2' do
    it 'is the computer by default' do
      expect(subject.player2).to be computer
    end
  end

  describe '#result' do
    context 'when player1 wins' do
      it 'announces player1 as winner with rock' do
        allow(player1).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :scissors }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player1 as winner with paper' do
        allow(player1).to receive(:move) { :paper }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq 'Frank wins!'
      end

      it 'announces player1 as winner with scissors' do
        allow(player1).to receive(:move) { :scissors }
        allow(computer).to receive(:move) { :paper }
        expect(subject.result).to eq 'Frank wins!'
      end
    end

    context 'when player2 wins' do
      it 'announces player2 as winner with scissors' do
        allow(player1).to receive(:move) { :paper }
        allow(computer).to receive(:move) { :scissors }
        expect(subject.result).to eq 'Computer wins!'
      end

      it 'announces computer as winne with paper' do
        allow(player1).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :paper }
        expect(subject.result).to eq 'Computer wins!'
      end

      it 'announces player2 as winner with rock' do
        allow(player1).to receive(:move) { :scissors }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq 'Computer wins!'
      end
    end

    context 'when draw' do
      it 'announces draw with rock' do
        allow(player1).to receive(:move) { :rock }
        allow(computer).to receive(:move) { :rock }
        expect(subject.result).to eq "It's a draw!"
      end

      it 'announces draw with paper' do
        allow(player1).to receive(:move) { :paper }
        allow(computer).to receive(:move) { :paper }
        expect(subject.result).to eq "It's a draw!"
      end

      it 'announces draw with scissors' do
        allow(player1).to receive(:move) { :scissors }
        allow(computer).to receive(:move) { :scissors }
        expect(subject.result).to eq "It's a draw!"
      end
    end
  end
end
