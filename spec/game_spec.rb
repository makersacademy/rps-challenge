require 'game'
describe Game do 
  context 'Game logic' do 
    it 'Players can draw' do 
      game = Game.new("Rock", "Rock")
      expect(game.result).to eq :draw
    end
    it 'Player 1 can lose' do 
      game = Game.new("Rock", "Paper")
      expect(game.result).to eq :loss
    end
    it 'Player 1 can win' do 
      game = Game.new("Rock", "Scissors")
      expect(game.result).to eq :win
    end
  end
end
