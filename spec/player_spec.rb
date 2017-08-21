require 'player'

describe Player do
  subject(:dave) { Player.new("Dave") }
  describe "#name" do
    it "returns the name" do
      expect(dave.name).to eq "Dave"
    end
  end

  it "allows you to select a weapon" do
    expect(dave.weapon = :rock).to eq :rock
  end

  it "raises an error if weapon not in array" do
    message = 'not a possible weapon'
    expect { dave.weapon = "bat" }.to raise_error message
  end

end
