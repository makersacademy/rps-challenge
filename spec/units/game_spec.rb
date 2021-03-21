require 'game'

describe Game do
  let(:rock_player) { instance_double(Player, move: 'rock') }
  let(:paper_player) { instance_double(Player, move: 'paper') }
  let(:scissors_player) { instance_double(Player, move: 'scissors') }

  describe '#initialize' do
    it 'takes players as arguments and saves them as instance variables' do
      game = described_class.new(rock_player, paper_player)
      expect(game.player1).to eq(rock_player)
      expect(game.player2).to eq(paper_player) 
    end
  end

  describe '#winner' do
    context 'when both players play same move' do
      it 'returns nil when both players play rock' do
        game = described_class.new(rock_player, rock_player)
        expect(game.winner).to eq(nil)
      end

      it 'returns nil when both players play paper' do
        game = described_class.new(paper_player, paper_player)
        expect(game.winner).to eq(nil)
      end

      it 'returns nil when both players play scissors' do
        game = described_class.new(scissors_player, scissors_player)
        expect(game.winner).to eq(nil)
      end
    end

    context 'when Player 1 wins' do
      it 'returns player 1 when rock against scissors' do
        game = described_class.new(rock_player, scissors_player)
        expect(game.winner).to eq(rock_player)
      end

      it 'returns player 1 when paper against rock' do
        game = described_class.new(paper_player, rock_player)
        expect(game.winner).to eq(paper_player)
      end

      it 'returns player 1 when scissors against paper' do
        game = described_class.new(scissors_player, paper_player)
        expect(game.winner).to eq(scissors_player)
      end
    end

    context 'when Player 2 wins' do
      it 'returns player 2 when paper against scissors' do
        game = described_class.new(paper_player, scissors_player)
        expect(game.winner).to eq(scissors_player)
      end

      it 'returns player 2 when rock against paper' do
        game = described_class.new(rock_player, paper_player)
        expect(game.winner).to eq(paper_player)
      end

      it 'returns player 2 when scissors against rock' do
        game = described_class.new(scissors_player, rock_player)
        expect(game.winner).to eq(rock_player)
      end
    end
  end
end
