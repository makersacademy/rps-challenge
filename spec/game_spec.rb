require 'game'

describe Game do

  let(:p1_game) { described_class.new(p1_scissors, p2_paper) }
  let(:p1_scissors){ double(:player, move: 'SCISSORS', move_to_sym: :SCISSORS) }
  let(:p1_paper) { double(:player, move: 'PAPER', move_to_sym: :PAPER) }
  let(:p2_scissors){ double(:computer, move: 'SCISSORS', move_to_sym: :SCISSORS) }
  let(:p2_paper) { double(:computer, move: 'PAPER', move_to_sym: :PAPER) }

  describe '#initialize' do
    it '0.0. initializes with one player' do
      expect(p1_game.p1).to eq(p1_scissors)
    end
    it '0.1. initializes with one computer' do
      expect(p1_game.p2).to eq(p2_paper)
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
end
