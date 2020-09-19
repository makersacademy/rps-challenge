require "game"
require "player"

describe Game do
  let(:charlotte) { Player.new("Charlotte") }
  let(:johan) { Player.new("Johan") }

  # let(:charlotte) { double :player, player: "Charlotte" }
  #let(:player_class_double) { double :player, new: charlotte }

  # let(:game_double) { double :game, player_one: charlotte }
  #let(:game_class_double) { double :game, new: game_double(player) }

  it "expects game to be initated with one player" do
    expect(Game).to respond_to(:new).with(1).arguments
  end

  it "player to be an instance of Player" do
    game = Game.new(charlotte)
    expect(game.player).to be_an_instance_of(Player)
  end

  describe "#determine_winner" do
    it "checks who won the game" do
      game = Game.new(charlotte)
      charlotte.store_move("Rock")

      expect(game.determine_winner).to eq "Charlotte's Rock beats Bot's Scissors"
    end
  end
end
