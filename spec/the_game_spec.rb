describe TheGame do

  let(:name) { double :name }

  context "the game is a draw" do

    it "draws with rock" do
      game = TheGame.new(:name, "rock", "rock")
      expect(game.the_winner).to eq "A DRAW!"
    end

    it "draws with paper" do
      game = TheGame.new(:name, "paper", "paper")
      expect(game.the_winner).to eq "A DRAW!"
    end

    it "draws with scissors" do
      game = TheGame.new(:name, "scissors", "scissors")
      expect(game.the_winner).to eq "A DRAW!"
    end

  end

  context "the player wins" do

    it "player wins with rock" do
      game = TheGame.new(:name, "rock", "scissors")
      expect(game.the_winner).to eq "YOU ARE NAME!"
    end

    it "player wins with paper" do
      game = TheGame.new(:name, "paper", "rock")
      expect(game.the_winner).to eq "YOU ARE NAME!"
    end

    it "player wins with scissors" do
      game = TheGame.new(:name, "scissors", "paper")
      expect(game.the_winner).to eq "YOU ARE NAME!"
    end

  end

  context "the internet wins" do

    it "internet wins with rock" do
      game = TheGame.new(:name, "scissors", "rock")
      expect(game.the_winner).to eq "THE INTERNET, BOOO..."
    end

    it "internet wins with paper" do
      game = TheGame.new(:name, "rock", "paper")
      expect(game.the_winner).to eq "THE INTERNET, BOOO..."
    end

    it "internet wins with scissors" do
      game = TheGame.new(:name, "paper", "scissors")
      expect(game.the_winner).to eq "THE INTERNET, BOOO..."
    end

  end

end
