require './lib/game'
require './lib/player'

describe Game do
  let(:player) { Player.new("Eve") }
  let(:game) { Game.new(player) }

  describe "#generate_opponent_move" do
    it "should return rock, paper or scissors" do
      srand(2)
      expect(game.generate_opponent_move).to eq "ROCK"
    end
  end

end
