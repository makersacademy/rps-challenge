describe Game do
  describe '#won?' do
    it 'player can win a game' do
      game = Game.new('rock', 'scissors')
      expect(game.won?). to eq 'You won!'
    end
    it 'player can draw a game' do
      game = Game.new('rock', 'rock')
      expect(game.won?). to eq "It's a draw!"
    end
    it 'player can lose a game' do
      game = Game.new('rock', 'paper')
      expect(game.won?). to eq 'You lost!'
    end
  end
end
