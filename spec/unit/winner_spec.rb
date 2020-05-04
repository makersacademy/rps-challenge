require "./lib/winner"

describe Winner do
  
  describe "#calculate_result" do

    it "returns a random output of Rock Paper Scissors" do 
      expect(subject).to respond_to(:calculate_result)
    end 

    it "returns winner if user beats computer" do
      expect(subject.calculate_result("Scissors", "Paper")).to eq("Winner")
    end

    it "returns winner if user beats computer" do
      expect(subject.calculate_result("Paper", "Rock")).to eq("Winner")
    end

    it "returns winner if user beats computer" do
      expect(subject.calculate_result("Rock", "Scissors")).to eq("Winner")
    end

    it "returns draw if computer & user shoot same " do 
      expect(subject.calculate_result("Rock", "Rock")).to eq("Draw")
    end 

    it "returns draw if computer & user shoot same " do 
      expect(subject.calculate_result("Scissors", "Scissors")).to eq("Draw")
    end 

    it "returns draw if computer & user shoot same " do 
      expect(subject.calculate_result("Paper", "Paper")).to eq("Draw")
    end 

    it "returns loser if computer beats user " do 
      expect(subject.calculate_result("Paper", "Scissors")).to eq("Loser")
    end 
  end 
end 
