require 'game'

describe Game do

  describe "#initialize" do
    it "Is initialized with the name AUTOBOT" do
      expect(subject.name).to eq("AUTOBOT")
    end
  end

  describe "#computer_move" do
    it "returns Rock" do
      expect(subject.computer_move).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
    end
    
  end
end
