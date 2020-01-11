require 'game'

describe Game do
  let(:player){double :player, name: "Asia"}
  subject{Game.new(player)}
  
  describe "rock_paper_scissors" do
    it "lets the game select an option at random" do
      srand(4)
      expect(subject.rock_paper_scissors).to eq "Scissors"
    end

    # it "lets the game select paper" do
    #   srand()
    #   expect(subject.rock_paper_scissors).to eq "Paper"
    # end
  end

  describe "#player_name" do
    it "returns the players name" do
      expect(subject.player_name).to eq "Asia"
    end
  end

  describe "#result" do
    it "returns the player wins" do
      expect(subject.result("Rock", "Scissors")).to eq "You won!!"
    end
    it "returns the game wins" do
      expect(subject.result("Scissors", "Rock")).to eq "Game wins"
    end
    it "returns a draw" do
      expect(subject.result("Rock", "Rock")).to eq "Draw!!"
    end
  end
end