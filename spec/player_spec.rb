require "player"

describe "Player" do

  subject(:rachel) {Player.new("rachel")}
  let(:choice) {double( :choice)}

  it "Returns name of player" do
    expect(rachel.name).to eq "rachel"
  end

  it "Returns player's move choice" do
    expect(rachel.player_move(choice)).to eq choice
  end
end
