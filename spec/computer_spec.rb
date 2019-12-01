require 'computer'

describe Computer do
  describe "#turn" do
    it "returns a randomly selected turn" do
      srand(2)
      expect(Computer.new.turn).to eq "Rock"
    end
  end
end
