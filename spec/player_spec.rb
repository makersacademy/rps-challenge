require 'player'

describe Player do

  subject(:player) { described_class.new('Dave') }

  context "#initialize" do
    it "stores a name argument in @name" do
      expect(player.name).to eq "Dave"
    end
  end

  context "#store_move" do
    it "should save the move in @move" do
      player.store_move("Rock")
      expect(player.move).to eq "Rock"
    end
  end
end
