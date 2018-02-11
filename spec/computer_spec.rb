require "computer"

describe Computer do

  subject(:computer) { described_class.new }

  context "#initialize" do

    it "initializes with the name RPSbot" do
      expect(computer.name).to eq("RPSbot")
    end

    it "initializes with a random move" do
      srand(356)
      expect(computer.move).to eq(:rock)
    end
    
  end
end
