require 'game'

describe Game do
 
    it 'Wins the game' do
      player = Player.new('Sarah')
      game = Game.new
      allow(game).to receive(:computer_choice).and_return('Rock')
      expect(game.outcome('Paper')).to eq 'Win'
    end
    
    it 'Loses the game' do
      player = Player.new('Sarah')
      game = Game.new
      allow(game).to receive(:computer_choice).and_return('Paper')
      expect(game.outcome('Rock')).to eq 'Lose'
    end
    
    it 'Results in a draw' do
      player = Player.new('Sarah')
      game = Game.new
      allow(game).to receive(:computer_choice).and_return('Scissors')
      expect(game.outcome('Scissors')).to eq 'Draw'
    end
end
    