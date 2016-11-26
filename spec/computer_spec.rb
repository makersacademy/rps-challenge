require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  context "choices" do
    it "should contain Rock, Paper and Scissors" do
      expect(computer.choices).to eq ["Rock", "Paper", "Scissors"]
    end
  end
  describe "#pick_one" do
    it "should pick a random choice from choices" do
      expect(computer.choices).to include(computer.pick_one)
    end
  end
  context "final_choice" do
    it "should start out as nil" do
      expect(computer.final_choice).to be nil
    end
    it "should be assigned the result of pick_one" do
      result = computer.pick_one
      expect(computer.final_choice).to eq result
    end
  end
end
