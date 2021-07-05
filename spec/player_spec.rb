require "player"

describe "Player" do

  subject(:rachel) { Player.new("rachel") }
  let(:player_choice) { double(:player_choice) }

  it "Returns name of player" do
    expect(rachel.name).to eq "rachel"
  end

  it "Returns player's move choice" do
    expect(rachel.player_move(player_choice)).to eq player_choice
  end
end
