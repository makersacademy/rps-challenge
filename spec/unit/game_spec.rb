require 'game'

describe Game do

  let(:player1) { double(choice: 'rock') }
  let(:player2) { double(choice: 'scissors') }

  let(:player3) { double(choice: 'paper') }
  let(:player4) { double(choice: 'scissors') }

  let(:player5) { double(choice: 'paper') }
  let(:player6) { double(choice: 'paper') }

  let(:subject) { described_class.new(player1, player2) }

  describe '#players' do
    it 'has a record of players' do
      expect(subject.players).to include(player1, player2)
    end
  end

  describe '#result' do
    it 'returns a tuple for player 1 winning' do
      expect(subject.result).to eq([1, player1])
    end

    it 'returns a tuple for player 4 winning' do
      subject = described_class.new(player3, player4)
      expect(subject.result).to eq([1, player4])
    end

    it 'returns a tuple for a draw' do
      subject = described_class.new(player5, player6)
      expect(subject.result).to eq([0, nil])
    end
  end
end
