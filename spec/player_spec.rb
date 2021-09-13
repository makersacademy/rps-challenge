require 'player'

describe Player do
  let(:gianluca) { Player.new("Gianluca") }

  describe "#name" do
    it "returns the name" do
      expect(gianluca.name).to eq "Gianluca"
    end
  end
end
