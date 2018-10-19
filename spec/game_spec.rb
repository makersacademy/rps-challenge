require 'game'

describe Game do

  describe '#outcome' do
    it 'should tell the player you win' do
      computer = double("computer", :current_pick => "rock")
      game = Game.new("steve", computer)
      game.player.pick("paper")
      expect(game.outcome).to eq "You win"
    end
  end
end
