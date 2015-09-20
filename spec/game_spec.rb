require 'game.rb'

describe Game do
  subject{Game.new(playerklass, opponentklass)}

  let(:playerklass)  {double :playerklass}
  let(:opponentklass) {double :opponentklass}
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  before(:each) do
    allow(playerklass).to receive(:new).and_return(player1)
    allow(opponentklass).to receive(:new).and_return(player2)
  end

  describe '#result' do
    context 'Rock' do
      it 'should return a draw with rock on rock' do
        allow(subject.player1).to receive(:selection).and_return(:rock)
        allow(subject.player2).to receive(:selection).and_return(:rock)
        expect(subject.result).to eq("Draw")
      end
      it 'should return a win with rock on scissors' do
        allow(subject.player1).to receive(:selection).and_return(:rock)
        allow(subject.player2).to receive(:selection).and_return(:scissors)
        expect(subject.result).to eq("Player 1 Win's")
      end
      it 'should return a lose with rock on paper' do
        allow(subject.player1).to receive(:selection).and_return(:rock)
        allow(subject.player2).to receive(:selection).and_return(:paper)
        expect(subject.result).to eq("Player 1 Loses")
      end
      it 'should return a win with rock on lizard' do
        allow(subject.player1).to receive(:selection).and_return(:rock)
        allow(subject.player2).to receive(:selection).and_return(:lizard)
        expect(subject.result).to eq("Player 1 Win's")
      end
      it 'should return a lose with rock on spock' do
        allow(subject.player1).to receive(:selection).and_return(:rock)
        allow(subject.player2).to receive(:selection).and_return(:spock)
        expect(subject.result).to eq("Player 1 Loses")
      end
    end
    context 'Paper' do
      it 'should return a draw with paper on paper' do
        allow(subject.player1).to receive(:selection).and_return(:paper)
        allow(subject.player2).to receive(:selection).and_return(:paper)
        expect(subject.result).to eq("Draw")
      end
      it 'should return a lose with paper on scissors' do
        allow(subject.player1).to receive(:selection).and_return(:paper)
        allow(subject.player2).to receive(:selection).and_return(:scissors)
        expect(subject.result).to eq("Player 1 Loses")
      end
      it 'should return a win with paper on spock' do
        allow(subject.player1).to receive(:selection).and_return(:paper)
        allow(subject.player2).to receive(:selection).and_return(:spock)
        expect(subject.result).to eq("Player 1 Win's")
      end
      it 'should return a lose with paper on lizard' do
        allow(subject.player1).to receive(:selection).and_return(:paper)
        allow(subject.player2).to receive(:selection).and_return(:lizard)
        expect(subject.result).to eq("Player 1 Loses")
      end
    end
  context 'Scissors' do
    it 'should return a draw with scissors on scissors' do
      allow(subject.player1).to receive(:selection).and_return(:scissors)
      allow(subject.player2).to receive(:selection).and_return(:scissors)
      expect(subject.result).to eq("Draw")
    end
    it 'should return a win with scissors on lizard' do
      allow(subject.player1).to receive(:selection).and_return(:scissors)
      allow(subject.player2).to receive(:selection).and_return(:lizard)
      expect(subject.result).to eq("Player 1 Win's")
    end
    it 'should return a lose with scissors on spock' do
      allow(subject.player1).to receive(:selection).and_return(:scissors)
      allow(subject.player2).to receive(:selection).and_return(:spock)
      expect(subject.result).to eq("Player 1 Loses")
    end
  end
  context 'Lizard' do
    it 'should return a draw with lizard on lizard' do
      allow(subject.player1).to receive(:selection).and_return(:lizard)
      allow(subject.player2).to receive(:selection).and_return(:lizard)
      expect(subject.result).to eq("Draw")
    end
    it 'should return a win with lizard on spock' do
      allow(subject.player1).to receive(:selection).and_return(:lizard)
      allow(subject.player2).to receive(:selection).and_return(:spock)
      expect(subject.result).to eq("Player 1 Win's")
    end
  end
  context 'Spock' do
    it 'should return a draw with spock on spock' do
      allow(subject.player1).to receive(:selection).and_return(:spock)
      allow(subject.player2).to receive(:selection).and_return(:spock)
      expect(subject.result).to eq("Draw")
      end
    end
  end
end
