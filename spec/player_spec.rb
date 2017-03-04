require 'player'

describe Player do

  subject(:player1) {described_class.new("Dave")}
  subject(:player2) {described_class.new("Mittens")}

  it "returns players name" do
    expect(player1.name).to eq "Dave"
    expect(player2.name).to eq "Mittens"
  end

end
