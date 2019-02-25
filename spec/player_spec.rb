require 'player'

describe "Player" do
  it "player name" do
    player = Player.new("Anu")
    expect(player.name).to eq "Anu"
  end
end
