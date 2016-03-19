require 'game'

describe Game do

  subject(:game){ described_class.new(p1_scissors, p2_paper) }
  let(:p1_scissors){ double(:player, move: 'SCISSORS', move_to_sym: :SCISSORS) }
  let(:p2_scissors){ double(:player, move: 'SCISSORS', move_to_sym: :SCISSORS) }
  let(:p2_paper) { double(:computer, move: 'PAPER', move_to_sym: :PAPER) }

  describe '#initialize' do
    it '0.0. initializes with one player' do
      expect(game.p1).to eq(p1_scissors)
    end
    it '0.1. initializes with one computer' do
      expect(game.p2).to eq(p2_paper)
    end
  end

  describe '#return_winner' do
    it '1.0. returns the winner' do
      expect(game.return_winner).to eq(p1_scissors)
    end
    it '1.1. annouces tie when p1 and p2 choose same move' do
      tie_game = described_class.new(p1_scissors, p2_scissors)
      expect(tie_game.return_winner).to eq('tie')
    end
  end
end
