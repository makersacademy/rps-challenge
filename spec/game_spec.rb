require 'game'

describe Game do
  subject(:game) { described_class.new }

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
  end

end
