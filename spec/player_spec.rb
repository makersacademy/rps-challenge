require 'player'

describe Player do
  subject(:player_1){Player.new("Jonny")}
  it "displays player name" do
    expect(player_1.name).to eq "Jonny"
  end
end
