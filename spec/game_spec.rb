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
      expect(game.choice_message("Rock")).to eq "You chose Rock"
    end
  end

  describe "#computer_choice_message" do
    it "should print which option the computer chose" do
      srand(1)
      expect(game.computer_choice_message(game.computer_choice)).to eq "Computer chose Paper"
    end
  end

  describe "#computer_choice" do
    it "should choose a random option" do
      srand(1)
      expect(game.computer_choice).to eq "Paper"
    end
  end

end
