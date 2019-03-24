require 'game'

describe Game do

  subject { described_class.new(player, computer) }

  let(:player) { double :player }
  let(:computer) { double :computer }

  context 'player wins' do
    it 'player wins if they chose paper and computer choses rock' do
      allow(player).to receive(:weapon).and_return('Paper')
      allow(computer).to receive(:weapon).and_return('rock')
      expect(subject.winner).to eq 'You win!'
    end

    it 'player wins if they chose rock and computer choses scissors' do
      allow(player).to receive(:weapon).and_return('Rock')
      allow(computer).to receive(:weapon).and_return('scissors')
      expect(subject.winner).to eq 'You win!'
    end

    it 'player wins if they chose scissors and computer choses paper' do
      allow(player).to receive(:weapon).and_return('Scissors')
      allow(computer).to receive(:weapon).and_return('paper')
      expect(subject.winner).to eq 'You win!'
    end
  end

  context 'computer wins' do
    it 'computer wins if they chose paper and player choses rock' do
      allow(player).to receive(:weapon).and_return('Rock')
      allow(computer).to receive(:weapon).and_return('paper')
      expect(subject.winner).to eq 'Computer wins!'
    end

    it 'computer wins if they chose rock and player choses scissors' do
      allow(player).to receive(:weapon).and_return('Scissors')
      allow(computer).to receive(:weapon).and_return('rock')
      expect(subject.winner).to eq 'Computer wins!'
    end

    it 'computer wins if they chose scissors and player choses paper' do
      allow(player).to receive(:weapon).and_return('Paper')
      allow(computer).to receive(:weapon).and_return('scissors')
      expect(subject.winner).to eq 'Computer wins!'
    end
  end
end
