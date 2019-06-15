require "player"

describe "Player" do

  subject(:player_name) {Player.new("player_name")}

  it "Returns name of player" do
    expect(player_name.name).to eq "player_name"
  end
end
