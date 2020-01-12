require 'rules'

describe Rules do

  describe "#result" do
    
    it "shows if the player won" do
      expect(subject.result("Rock", "Scissors")).to eq("Wins!")
    end

    it "shows if the player drawes" do
      expect(subject.result("Rock", "Rock")).to eq("Draws!")
    end

    it "shows if the player loses" do
      expect(subject.result("Rock", "Paper")).to eq("Loses!")
    end

  end

end
