require 'player'

describe Player do

subject(:player) {described_class.new("Simon")}

  describe '1 #name'do
    it '1.0 player has a name'do
      expect(player.name).to eq "Simon"
    end
  end

  describe '2 #choice' do
    it '2.0 player can make a choice' do
      expect(player.choose("Rock")).to eq :rock
    end
  end

end
