require 'game'

  describe Game do
    it "Stores an instance of itself" do
      Game.start
      expect(Game.current_game.class).to eq Game
    end
  end
