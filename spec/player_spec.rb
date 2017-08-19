require "player"
describe Player do
  let(:player){described_class.new("Jenny")}
  it "returns the player name" do
    expect(player.name).to eq "Jenny"
  end
end
