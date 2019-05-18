require 'player'

describe Player do
  subject (:player) { Player.new('Dave') }

    it "can return its name" do
      expect(player.name).to eq "Dave"
    end


end
