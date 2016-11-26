require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#choices" do
    it "should be an array" do
      expect(computer.choices).to be_a Array
    end
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
end
