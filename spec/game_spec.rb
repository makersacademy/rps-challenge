require 'game'

describe Game do

  describe "#computer_move" do
    it "returns Rock" do
      expect(subject.computer_move).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
    end
    
  end
end
