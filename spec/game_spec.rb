require 'game'

describe Game do

  let(:p1_game) { described_class.new(p1_scissors, p2_paper) }
  let(:p1_scissors){ double(:player, move: 'SCISSORS', move_to_sym: :SCISSORS, gain_score: nil, score: 1) }
  let(:p1_paper) { double(:player, move: 'PAPER', move_to_sym: :PAPER) }
  let(:p2_scissors){ double(:computer, move: 'SCISSORS', move_to_sym: :SCISSORS) }
  let(:p2_paper) { double(:computer, move: 'PAPER', move_to_sym: :PAPER, gain_score: nil, score: 0) }

  describe '#initialize' do
    it '0.0. initializes with one player' do
      expect(p1_game.p1).to eq(p1_scissors)
    end
    it '0.1. initializes with one computer' do
      expect(p1_game.p2).to eq(p2_paper)
    end
    it '0.2. initialises with true in_game flag' do
      expect(p1_game.in_game).to eq(true)
    end
  end

  describe '#return_winner' do
    it '1.0. returns p1 when p1 wins' do
      expect(p1_game.return_winner).to eq(p1_scissors)
    end
    it '1.1. returns p2 when p2 wins' do
      p2_game = described_class.new(p1_paper, p2_scissors)
      expect(p2_game.return_winner).to eq(p2_scissors)
    end
    it '1.2. annouces draw when p1 and p2 choose same move' do
      draw_game = described_class.new(p1_scissors, p2_scissors)
      expect(draw_game.return_winner).to eq('draw')
    end
  end

  describe '#update_score' do
    it '2.0. adds a point to the winner\'s score' do
      p1_game.update_score
      expect(p1_scissors.score).to eq(1)
    end
    it '2.1. adds nothing to the loser\'s score' do
      p1_game.update_score
      expect(p2_paper.score).to eq(0)
    end

    describe '#end_game' do
      it '3.0. changes in_game flag to false and ends the game' do
        p1_game.end_game
        expect(p1_game.in_game).to eq(false)
      end
    end

    describe '#begin_game' do
      it '4.0. changes in_game flag to true and bigins the game' do
        p1_game.end_game
        p1_game.begin_game
        expect(p1_game.in_game).to eq(true)
      end
    end
  end
end
