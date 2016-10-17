require 'player'

describe Player do

  subject(:player) {described_class.new("bob")}

  it "initializes a new player" do
    expect(player.name).to eq "bob"
  end

  it "allows player to pick weapon" do
    player.pick(:rock)
    expect(player.weapon).to eq :rock
  end

  it "raises error if weapon is not rock, paper or scissors" do
    expect{player.pick(:notarock)}.to raise_error "Please choose rock, paper or scissors."
  end
end
