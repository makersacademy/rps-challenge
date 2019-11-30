require "computer"

describe Computer do
  let(:computer) { Computer.new }

  describe "#random_choice" do
    it "should return :rock for random seed 0" do
      srand(0)
      expect(computer.random_choice).to eq :rock
    end

    it "should return :paper for random seed 1" do
      srand(1)
      expect(computer.random_choice).to eq :paper
    end

    it "should return :scissors for random seed 3" do
      srand(3)
      expect(computer.random_choice).to eq :scissors
    end
  end
end
