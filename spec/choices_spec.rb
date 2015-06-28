require './lib/choices'
describe Choices do

  describe "Rock" do
    it "is a class method that returns :Rock " do
      expect(Choices.rock).to eq :Rock
    end
  end

  describe "Scissors" do
    it "is a class method that returns :Scissors " do
      expect(Choices.scissors).to eq :Scissors
    end
  end

  describe "Paper" do
    it "is a class method that returns :Paper " do
      expect(Choices.paper).to eq :Paper
    end
  end

end
