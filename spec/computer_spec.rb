require "computer"

describe Computer do

  subject(:computer) { described_class.new }

  context "#initialize" do

    it "initializes with the name RPSbot" do
      expect(computer.name).to eq("RPSbot")
    end

  end

  context "#choose_move" do

    it "gets a random move" do
      srand(356)
      expect(computer.computer_move).to eq(:rock)
    end
  end
end
