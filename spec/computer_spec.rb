require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#choices" do
    it "should contain Rock" do
      expect(computer.choices).to include "Rock"
    end
    it "should contain Paper" do
      expect(computer.choices).to include "Paper"
    end
    it "should contain Scissors" do
      expect(computer.choices).to include "Scissors"
    end
  end
  describe "#pick_one" do
    it "should pick a random choice from choices" do
      expect(computer.choices).to include(computer.pick_one)
    end
  end
end
