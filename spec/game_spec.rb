require 'game'

describe Game do

  describe '#initialize' do
    let(:player_1) { double :player_1, hand: 1 }
    let(:player_2) { double :player_2, hand: 2 }
    subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}

    it 'with two players' do
      expect(subject.players).to eq [player_1, player_2]
    end
  end

  describe '#winner' do

    context 'player_1 has Scissors and player_2 has Paper' do
      let(:player_1) { double :player_1, hand: 'Scissors' }
      let(:player_2) { double :player_2, hand: 'Paper' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Scissors and player_2 has Rock' do
      let(:player_1) { double :player_1, hand: 'Scissors' }
      let(:player_2) { double :player_2, hand: 'Rock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_2 wins' do
        expect(subject.winner).to eq player_2
      end
    end

    context 'player_1 has Scissors and player_2 has Lizard' do
      let(:player_1) { double :player_1, hand: 'Scissors' }
      let(:player_2) { double :player_2, hand: 'Lizard' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Scissors and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 'Scissors' }
      let(:player_2) { double :player_2, hand: 'Spock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_2 wins' do
        expect(subject.winner).to eq player_2
      end
    end

    context 'player_1 has Paper and player_2 has Rock' do
      let(:player_1) { double :player_1, hand: 'Paper' }
      let(:player_2) { double :player_2, hand: 'Rock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Paper and player_2 has Lizard' do
      let(:player_1) { double :player_1, hand: 'Paper' }
      let(:player_2) { double :player_2, hand: 'Lizard' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_2 wins' do
        expect(subject.winner).to eq player_2
      end
    end

    context 'player_1 has Paper and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 'Paper' }
      let(:player_2) { double :player_2, hand: 'Spock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Rock and player_2 has Lizard' do
      let(:player_1) { double :player_1, hand: 'Rock' }
      let(:player_2) { double :player_2, hand: 'Lizard' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Rock and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 'Rock' }
      let(:player_2) { double :player_2, hand: 'Spock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_2 wins' do
        expect(subject.winner).to eq player_2
      end
    end

    context 'player_1 has Lizard and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 'Lizard' }
      let(:player_2) { double :player_2, hand: 'Spock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'player_1 wins' do
        expect(subject.winner).to eq player_1
      end
    end

    context 'player_1 has Rock and player_2 has Rock' do
      let(:player_1) { double :player_1, hand: 'Rock' }
      let(:player_2) { double :player_2, hand: 'Rock' }
      subject {described_class.new(players: [player_1, player_2], hands: ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock'])}
      it 'returns nil' do
        expect(subject.winner).to eq nil
      end
    end

  end
end
