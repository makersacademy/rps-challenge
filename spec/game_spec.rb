describe Game do

  let(:player1) {double :player1, name: "name1"}
  subject(:game) {described_class.new(player1)}

  describe "#player1" do
    it "creates a player and names them" do
      expect(game.player1.name).to eq "name1"
    end
  end

  describe "#choice_message" do
    it "should print which option you chose" do
      expect(game.choice_message("rock")).to eq "You chose rock"
    end
  end

  describe "#computer_choice_message" do
    it "should print which option the computer chose" do
      srand(1)
      expect(game.computer_choice_message(game.computer_choice)).to eq "Computer chose paper"
    end
  end

  describe "#computer_choice" do
    it "should choose a random option" do
      srand(1)
      expect(game.computer_choice).to eq :paper
    end
  end

  describe "#game_started" do
    it "returns false if you havent chosen R/P/S" do
      expect(game.game_started?).to eq false
    end

    it "returns true if you have played a round" do
      game.choice = :rock
      expect(game.game_started?).to eq true
    end
  end

  describe "#who_won" do
    it "decides which person won" do
      srand(3)
      game.choice = :rock
      expect(game.who_won(game.choice, game.computer_choice)).to eq "name1"
    end
  end

end
