require 'game'
require 'player'

describe Game do
  subject(:game) {Game.new('User')}

  describe "#initialize" do
    it "starts the game with a named player" do
      expect(game.player.name).to eq "User"
    end
  end

end