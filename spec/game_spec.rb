require 'game'

describe Game do

  describe '#vs_computer' do
    it 'Returns a result vs computer (computer = paper)' do
      srand(1)
      game = Game.new('Leon', 'computer')
      game.move('Paper', 'computer')
      expect(game.result).to eq "Draw"
    end
    it 'Returns a result vs computer (computer = rock)' do
      srand(2)
      game = Game.new('Leon', 'computer')
      game.move('Paper', 'computer')
      expect(game.result).to eq "Win"
    end
    it 'Returns a result vs computer (computer = sissors)' do
      srand(3)
      game = Game.new('Leon', 'computer')
      game.move('Paper', 'computer')
      expect(game.result).to eq "Lose"
    end
  end
  describe 'vs_p2' do
    it 'Returns a result vs p2 (p1 win)' do
      game = Game.new('Leon', 'Alfred')
      game.move('Paper', 'Rock')
      expect(game.result).to eq "Win"
    end
    it 'Returns a result vs p2 (draw)' do
      game = Game.new('Leon', 'Alfred')
      game.move('Paper', 'Paper')
      expect(game.result).to eq "Draw"
    end
  end
end
