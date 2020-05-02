require "./lib/rps"

describe Rps do
  
  describe "#random_output" do

    it "generates Rock if rand 1 called" do 
      expect(subject.move(1)).to eq("Rock")
    end 

    it "generates Paper if rand 2 called" do 
      expect(subject.move(2)).to eq("Paper")
    end 

    it "generates Scissors if rand 3 called" do 
      expect(subject.move(3)).to eq("Scissors")
    end 
  end 

  describe "#random_output" do
    it "returns a either 'Sunny' or 'Stormy'" do
      expect(subject.random_output).to eq(1).or eq(2).or eq(3)
    end
  end 

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
