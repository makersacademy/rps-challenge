require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe 'Player' do
    it 'shows player 1' do
      expect(game.player1).to eq player1
    end

    it 'shows player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#results' do
    context 'wins' do
      it 'shows the correct winner in Paper vs. Rock' do
        expect(game.results('Paper', 'Rock')).to eq 'win'
      end
      it 'shows the correct winner in Rock vs. Scissors' do
        expect(game.results('Rock', 'Scissors')).to eq 'win'
      end
      it 'shows the correct winner in Scissors vs. Paper' do
        expect(game.results('Scissors', 'Paper')).to eq 'win'
      end
    end
    context 'loses' do
      it 'shows the correct loser in Paper vs. Scissors' do
        expect(game.results('Paper', 'Scissors')).to eq 'lose'
      end
      it 'shows the correct loser in Scissors vs. Rock' do
        expect(game.results('Scissors', 'Rock')).to eq 'lose'
      end
      it 'shows the correct loser in Rock vs. Paper' do
        expect(game.results('Rock', 'Paper')).to eq 'lose'
      end
    end

    context 'ties' do
      it 'shows a tie in Rock vs. Rock' do
        expect(game.results('Rock', 'Rock')).to eq 'tie'
      end
      it 'shows a tie in Paper vs. Paper' do
        expect(game.results('Paper', 'Paper')).to eq 'tie'
      end
      it 'shows a tie in Scissors vs. Scissors' do
        expect(game.results('Scissors', 'Scissors')).to eq 'tie'
      end
    end
  end

end
