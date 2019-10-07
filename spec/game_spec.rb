require 'game'

describe Game do

  subject { described_class.new(player, computer) }

  let(:player) { double :player }
  let(:computer) { double :computer }

  context 'player wins' do
    it 'if they chose paper and computer choses rock' do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(computer).to receive(:weapon).and_return(:rock)
      expect(subject.winner).to eq player
    end

    it 'if they chose rock and computer choses scissors' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:scissors)
      expect(subject.winner).to eq player
    end

    it 'if they chose scissors and computer choses paper' do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(computer).to receive(:weapon).and_return(:paper)
      expect(subject.winner).to eq player
    end
  end

  context 'computer wins' do
    it 'if they chose paper and player choses rock' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:paper)
      expect(subject.winner).to eq computer
    end

    it 'if they chose rock and player choses scissors' do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(computer).to receive(:weapon).and_return(:rock)
      expect(subject.winner).to eq computer
    end

    it 'if they chose scissors and player choses paper' do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(computer).to receive(:weapon).and_return(:scissors)
      expect(subject.winner).to eq computer
    end
  end

  context 'draw' do
    it 'if both choose rock' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:rock)
      expect(subject.winner).to eq :draw
    end

    it 'if both choose scissors' do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(computer).to receive(:weapon).and_return(:scissors)
      expect(subject.winner).to eq :draw
    end

    it 'if both choose paper' do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(computer).to receive(:weapon).and_return(:paper)
      expect(subject.winner).to eq :draw
    end
  end
end
