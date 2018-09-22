require 'player'

describe Player do

  subject(:player) { described_class.new('Dave') }
  
  context "#initialize" do
    it "stores a name argument in @name" do
      expect(player.name).to eq "Dave"
    end
  end
end
