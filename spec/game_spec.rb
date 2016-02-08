require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player, computer) }

  describe 'result' do
    it 'returns win when passed "ROCK" and "SCISSORS"' do
      expect(game.result("ROCK", "SCISSORS")).to eq :win
    end

    it 'returns draw when passed "ROCK" and "ROCK"' do
      expect(game.result("ROCK", "ROCK")).to eq :draw
    end

    it 'returns lose when passed "ROCK" and "PAPER"' do
      expect(game.result("ROCK", "PAPER")).to eq :lose
    end

    it 'returns draw when passed "SCISSORS" and "SCISSORS"' do
      expect(game.result("SCISSORS", "SCISSORS")).to eq :draw
    end

    it 'returns lose when passed "SCISSORS" and "ROCK"' do
      expect(game.result("SCISSORS", "ROCK")).to eq :lose
    end

    it 'returns win when passed "SCISSORS" and "PAPER"' do
      expect(game.result("SCISSORS", "PAPER")).to eq :win
    end

    it 'returns draw when passed "PAPER" and "SCISSORS"' do
      expect(game.result("PAPER", "SCISSORS")).to eq :lose
    end

    it 'returns lose when passed "PAPER" and "ROCK"' do
      expect(game.result("PAPER", "ROCK")).to eq :win
    end

    it 'returns win when passed "SCISSORS" and "PAPER"' do
      expect(game.result("PAPER", "PAPER")).to eq :draw
    end
  end

end
