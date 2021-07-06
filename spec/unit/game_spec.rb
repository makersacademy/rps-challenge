require 'game'

  describe Game do
    let(:player_1){double :player_1}
    before :each do
      Game.start(player_1)
    end
    it "Stores an instance of itself" do
      expect(Game.current_game.class).to eq Game
    end

    it "Holds the player name" do
      expect(Game.current_game.name).to eq player_1
    end

    it "Outputs path with outcome of round when player chooses rock" do
      srand(1234)
      Game.current_game.player_choice("Rock")
      expect(Game.current_game.outcome).to eq "/Win"
    end

    it "Outputs path with outcome of round when player chooses scissors" do
      srand(1234)
      Game.current_game.player_choice("Scissors")
      expect(Game.current_game.outcome).to eq "/Draw"
    end

    it "Outputs path with outcome of round when player chooses paper" do
      srand(1234)
      Game.current_game.player_choice("Paper")
      expect(Game.current_game.outcome).to eq "/Lose"
    end

    it "Outputs path with outcome of round when player chooses rock" do
      srand(2345)
      Game.current_game.player_choice("Rock")
      expect(Game.current_game.outcome).to eq "/Draw"
    end

    it "Outputs path with outcome of round when player chooses scissors" do
      srand(2345)
      Game.current_game.player_choice("Scissors")
      expect(Game.current_game.outcome).to eq "/Lose"
    end

    it "Outputs path with outcome of round when player chooses paper" do
      srand(2345)
      Game.current_game.player_choice("Paper")
      expect(Game.current_game.outcome).to eq "/Win"
    end

    it "Outputs path with outcome of round when player chooses rock" do
      srand(10)
      Game.current_game.player_choice("Rock")
      expect(Game.current_game.outcome).to eq "/Lose"
    end

    it "Outputs path with outcome of round when player chooses scissors" do
      srand(10)
      Game.current_game.player_choice("Scissors")
      expect(Game.current_game.outcome).to eq "/Win"
    end

    it "Outputs path with outcome of round when player chooses paper" do
      srand(10)
      Game.current_game.player_choice("Paper")
      expect(Game.current_game.outcome).to eq "/Draw"
    end
  end
