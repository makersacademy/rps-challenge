require 'player'

describe Player do
  subject(:player)  { described_class.new(player_name) }
  let(:player_name) { "Jon" }

  it "has a name" do
    expect(player.name).to eq "Jon"
  end
  it "can take a weapon" do
    player.take_weapon("rock")
    expect(player.weapon).to eq "rock"
  end

end
