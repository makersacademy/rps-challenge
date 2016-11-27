require 'player'

describe Player do

  subject(:player) {described_class.new("Russell")}

  describe "initialization" do
    it "has a name" do
      expect(player.name).to eq 'Russell'
    end

    it "is active to begin with" do
      expect(player.is_active?).to be true
    end
  end

  describe "switching player" do

    it "can switch the active status of a player" do
      player.switch_active
      expect(player.is_active?).to be false
    end
    
  end



end
