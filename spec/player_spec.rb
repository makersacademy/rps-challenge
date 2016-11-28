require 'player'

describe Player do

  subject(:player) {described_class.new}

  describe "initialization" do
    it "stores a name" do
      expect(player.name).to eq nil
    end

    it "stores a choice" do
      expect(player.choice).to eq nil
    end

  end

  describe "class methods" do
    it "adds current player name" do
      player.add_name("Russell")
      expect(player.name).to eq "Russell"
    end

  end


end
