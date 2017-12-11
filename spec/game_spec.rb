require_relative "../lib/game"


describe Game do
subject(:game) {described_class.new("player")}
it "should have a new player when started" do
  expect(game.player).to eq "player"
end


end
