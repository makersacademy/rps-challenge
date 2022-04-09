require 'game'
require 'player'

describe Game do
  describe 'intialization' do
    it 'is initalized with a player name and their move ' do
      game = Game.new(Player.new("Raman"), 'Paper')
      expect(game.player).to be_an_instance_of Player
    end
  end

  describe '#move' do
    it 'chosses one of the moves' do
      game = Game.new(Player.new("Raman"), 'Paper')
      expect { game.move }.not_to raise_error
    end
  end
  
  describe 'move' do
    it 'checks  that computer loses ' do
      game = Game.new(Player.new("Raman"), 'Paper')
      allow(game).to receive(:move).and_return("Rock")
      expect(game.playing).to eq 'Win'
    end
    
    it 'checks  that computer wins ' do
      game = Game.new(Player.new("Raman"), 'Paper')
      allow(game).to receive(:move).and_return("Scissors")
      expect(game.playing).to eq 'Lost'
    end
    it 'checks  that computer draws ' do
      game = Game.new(Player.new("Raman"), 'Scissors')
      allow(game).to receive(:move).and_return("Scissors")
      expect(game.playing).to eq 'Draw'
    end
    it 'checks  that player wins ' do
      game = Game.new(Player.new("Raman"), 'Rock')
      allow(game).to receive(:move).and_return("Scissors")
      expect(game.playing).to eq 'Win'
    end
    it 'checks  that player wins ' do
      game = Game.new(Player.new("Raman"), 'Scissors')
      allow(game).to receive(:move).and_return("Paper")
      expect(game.playing).to eq 'Win'
    end
  end
end