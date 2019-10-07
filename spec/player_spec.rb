require './lib/player.rb'

describe Player do
  let (:player) {described_class.new("Rock", "Lucas")}
  it "stores the selected option" do
    expect(player.selection).to eq "R"
  end

  it "remembers the player name" do
    expect(player.name).to eq "Lucas"
  end
end
