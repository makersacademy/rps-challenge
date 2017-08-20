require 'game'

describe Game do

  context '#outcome' do
    it 'should return win if the user wins' do
      game = Game.new('rock', 'sissors')
      expect(game.outcome).to eq 'Player wins!'
    end

    it 'should return draw if they draw' do
      game = Game.new('rock', 'rock')
      expect(game.outcome).to eq 'Draw!'
    end

    it 'should return a message if they lose' do
      game = Game.new('paper', 'sissors')
      message = 'Computer wins, they\'re taking over!'
      expect(game.outcome).to eq message
    end

  end

end
