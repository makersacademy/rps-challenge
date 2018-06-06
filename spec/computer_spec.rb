require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#move" do
    it "randomly selects a counter move for the computer" do
      moves_double = double :available_moves, sample: "Paper"
      computer = Computer.new(moves_double)
      expect(computer.move).to eq "Paper"
    end
  end
end
