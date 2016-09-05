require 'game'

describe Game do

  let(:player){double :player}
  let(:computer){double :computer}
  subject { described_class.new(player, computer) }

  describe '#initialize' do
    it 'is initialized with a player' do
      expect(subject.player).to eq player
    end

    it 'is initialized with a computer' do
      expect(subject.computer).to eq computer
    end
  end

  describe '#result' do
    it 'returns draw if computer and player both pick rock' do
      allow(computer).to receive(:weapon).and_return(:rock)
      allow(player).to receive(:weapon).and_return(:rock)
      expect(subject.result).to eq :draw
    end

    it 'returns draw if computer and player both pick paper' do
      allow(computer).to receive(:weapon).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(subject.result).to eq :draw
    end

    it 'returns draw if computer and player both pick scissors' do
      allow(computer).to receive(:weapon).and_return(:scissors)
      allow(player).to receive(:weapon).and_return(:scissors)
      expect(subject.result).to eq :draw
    end

    it 'returns win if player picks rock and computer picks scissors' do
      allow(computer).to receive(:weapon).and_return(:scissors)
      allow(player).to receive(:weapon).and_return(:rock)
      expect(subject.result).to eq :win
    end

    it 'returns win if player picks paper and computer picks rock' do
      allow(computer).to receive(:weapon).and_return(:rock)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(subject.result).to eq :win
    end

    it 'returns win if player picks scissors and computer picks paper' do
      allow(computer).to receive(:weapon).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:scissors)
      expect(subject.result).to eq :win
    end

    it 'returns lose if player picks scissors and computer picks rock' do
      allow(computer).to receive(:weapon).and_return(:rock)
      allow(player).to receive(:weapon).and_return(:scissors)
      expect(subject.result).to eq :lose
    end

    it 'returns lose if player picks paper and computer picks scissors' do
      allow(computer).to receive(:weapon).and_return(:scissors)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(subject.result).to eq :lose
    end

    it 'returns lose if player picks rock and computer picks paper' do
      allow(computer).to receive(:weapon).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:rock)
      expect(subject.result).to eq :lose
    end
  end
end
