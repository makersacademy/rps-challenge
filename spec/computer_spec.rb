require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#move" do
    it "randomly selects a counter move for the computer" do
      allow(Computer::MOVES).to receive(:sample) { "Paper" }
      expect(computer.move).to eq "Paper"
    end
  end
end
