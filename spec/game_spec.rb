require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#rps' do
    it 'returns a player win' do
      expect(game.rps('ROCK','SCISSORS')).to eq "Player wins"
      expect(game.rps('SCISSORS','PAPER')).to eq "Player wins"
      expect(game.rps('PAPER','ROCK')).to eq "Player wins"
    end

    it 'returns a computer win' do
      expect(game.rps('SCISSORS','ROCK')).to eq "Computer wins"
      expect(game.rps('PAPER','SCISSORS')).to eq "Computer wins"
      expect(game.rps('ROCK','PAPER')).to eq "Computer wins"
    end

    it 'returns a draw' do
      expect(game.rps('ROCK','ROCK')).to eq "DRAW"
      expect(game.rps('SCISSORS','SCISSORS')).to eq "DRAW"
      expect(game.rps('PAPER','PAPER')).to eq "DRAW"
    end
  end

end
