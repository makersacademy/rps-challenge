require './lib/game.rb'

describe Game do
  it "takes a player name on initialization" do
    game = Game.new("Kevin")
    expect(game.player_name).to eq("Kevin")
  end
  it "is created without a player move" do
    game = Game.new("Kevin")
    expect(game.player_move).to eq(nil)
  end

  describe "#update_player_move" do
    it "updates player_move " do
      game = Game.new("Kevin")
      game.update_player_move("spock")
      expect(game.player_move).to eq("spock")
    end
  end

end
