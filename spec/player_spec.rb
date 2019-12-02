require 'player'

describe Player do
  subject(:player) { Player.new("Harrison") }

  it "should have a name" do
    expect(player).to have_attributes(name: "Harrison")
  end

  # Is this testing state?
  describe "#choose" do
    it "should change the player's choice" do
      player.choose("rock")
      expect(player.choice).to eq "rock"
    end
  end

end
