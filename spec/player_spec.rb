require 'player'

describe Player do

  let(:name){double :name, name: "wayne"}
  subject(:player) {Player.new(name)}

  it "Stores a player name" do
    expect(player.name).to be(name)
  end

end
