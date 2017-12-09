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


end
