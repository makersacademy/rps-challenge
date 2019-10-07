require 'game'

describe Game do

  describe '#outcome' do
    it 'should tell the player you win' do
      computer = double("computer", :current_pick => "rock")
      game = Game.new("steve", computer)
      game.player.pick("paper")
      expect(game.outcome).to eq "You win"
    end
    it 'should tell the player you win' do
      computer = double("computer", :current_pick => "paper")
      game = Game.new("steve", computer)
      game.player.pick("rock")
      expect(game.outcome).to eq "You lose"
    end
    it 'should tell the player you win' do
      computer = double("computer", :current_pick => "scissors")
      game = Game.new("steve", computer)
      game.player.pick("scissors")
      expect(game.outcome).to eq "You draw"
    end
  end
end
