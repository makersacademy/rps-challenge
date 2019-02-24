require 'game'

  describe Game do
    let(:player_1){double :player_1}
    it "Stores an instance of itself" do
      Game.start(player_1)
      expect(Game.current_game.class).to eq Game
    end

    it "Holds the player name" do
      Game.start(player_1)
      expect(Game.current_game.name).to eq player_1
    end
  end
