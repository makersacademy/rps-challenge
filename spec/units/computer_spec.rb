require "computer"

describe Computer do
  let(:computer) { Computer.new }

  describe "#choice" do
    it "should return nil for an initialized object" do
      expect(computer.choice).to eq nil
    end

    it "should return the computer's choice" do
      srand(2)
      computer.random_choice
      expect(computer.choice).to eq :rock
    end
  end

  describe "#random_choice" do
    it "should return :rock for random seed 2" do
      srand(2)
      expect(computer.random_choice).to eq :rock
    end

    it "should return :paper for random seed 10" do
      srand(10)
      expect(computer.random_choice).to eq :paper
    end

    it "should return :scissors for random seed 3" do
      srand(3)
      expect(computer.random_choice).to eq :scissors
    end

    it "should return :spock for random seed 1" do
      srand(1)
      expect(computer.random_choice).to eq :spock
    end

    it "should return :lizard for random seed 7" do
      srand(7)
      expect(computer.random_choice).to eq :lizard
    end
  end
end
