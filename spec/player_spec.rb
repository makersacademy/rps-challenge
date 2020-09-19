require "game"
require "player"

describe "Player" do
  let(:charlotte) { Player.new("Charlotte") }

  it "expects player to be initalized with a player name" do
    expect(charlotte.name).to eq "Charlotte"
  end

  describe "#store_move" do
    it "stores the players move" do
      charlotte.store_move("Rock")
      expect(charlotte.move).to eq "Rock"
    end
  end
end
