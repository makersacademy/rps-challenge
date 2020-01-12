require 'rules'

describe Rules do

  describe "#result" do
    
    it "shows if the player won" do
      expect(subject.result("Rock", "Scissors")).to eq("Wins")
    end

    it "shows if the player drawed" do
      expect(subject.result("Rock", "Rock")).to eq("Draw")
    end

    it "shows if the player lost" do
      expect(subject.result("Rock", "Paper")).to eq("Loss")
    end

  end

end