require 'game'

describe Game do

  describe '#initialize' do
    let(:player_1) { double :player_1, hand: 1 }
    let(:player_2) { double :player_2, hand: 2 }
    subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}

    it 'with two players' do
      expect(subject.players).to eq [player_1, player_2]
    end
  end

  describe '#winners' do

    context 'player_1 has rock and player_2 has paper' do
      let(:player_1) { double :player_1, hand: 1 }
      let(:player_2) { double :player_2, hand: 2 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_1 wins' do
        expect(subject.winners).to include player_1
      end
    end

    context 'player_1 has rock and player_2 has scissors' do
      let(:player_1) { double :player_1, hand: 1 }
      let(:player_2) { double :player_2, hand: 3 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_2 wins' do
        expect(subject.winners).to include player_2
      end
    end

    context 'player_1 has paper and player_2 has scissors' do
      let(:player_1) { double :player_1, hand: 2 }
      let(:player_2) { double :player_2, hand: 1 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_2 wins' do
        expect(subject.winners).to include player_2
      end
    end

    context 'player_1 has paper and player_2 has lizzard' do
      let(:player_1) { double :player_1, hand: 2 }
      let(:player_2) { double :player_2, hand: 4 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_2 wins' do
        expect(subject.winners).to include player_2
      end
    end

    context 'player_1 has paper and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 2 }
      let(:player_2) { double :player_2, hand: 5 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_1 wins' do
        expect(subject.winners).to include player_1
      end
    end

    context 'player_1 has rock and player_2 has lizzard' do
      let(:player_1) { double :player_1, hand: 3 }
      let(:player_2) { double :player_2, hand: 4 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_1 wins' do
        expect(subject.winners).to include player_1
      end
    end

    context 'player_1 has rock and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 3 }
      let(:player_2) { double :player_2, hand: 5 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_2 wins' do
        expect(subject.winners).to include player_2
      end
    end

    context 'player_1 has scissors and player_2 has lizzard' do
      let(:player_1) { double :player_1, hand: 1 }
      let(:player_2) { double :player_2, hand: 4 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_1 wins' do
        expect(subject.winners).to include player_1
      end
    end

    context 'player_1 has scissors and player_2 has Spock' do
      let(:player_1) { double :player_1, hand: 1 }
      let(:player_2) { double :player_2, hand: 5 }
      subject {described_class.new(players: [player_1, player_2], hands: [1, 2, 3, 4, 5])}
      it 'player_2 wins' do
        expect(subject.winners).to include player_2
      end
    end
  end
end
