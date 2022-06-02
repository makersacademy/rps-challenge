require 'game'

RSpec.describe Game do
  describe "#play_game method" do
    it "gives the outcome" do
      game = Game.new("Dave")
      game.player_move("Rock")
      game.force_move("Scissors")
      expect(game.play_game).to eq "Win!"
    end
  end
end