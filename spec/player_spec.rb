require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe "A test to see if when a new instance of player is called" do
    it "it instanciates the name variable correctly" do
      player = Player.new("Rudolph")
      expect(player.name).to eq "Rudolph"
    end
  end


end
