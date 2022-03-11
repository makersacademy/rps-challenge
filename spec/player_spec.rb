require 'player'

describe Player do
  it "returns the name of the palyer" do
    expect(Player.name("Tinda")).to eq "Tinda"
  end
end