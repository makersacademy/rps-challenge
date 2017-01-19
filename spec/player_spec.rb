require 'player'

describe Player do
  subject(:player) { Player.new("Amanda") }

    it "returns it's name" do
      expect(player.name).to eq "Amanda"
    end
end
