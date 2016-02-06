require 'player'

describe Player do

  subject(:player) { described_class.new("Sheldon") }

  describe "names saved to new instance of player class can be called" do
    it 'saves #player_1_name' do
      expect(player.name).to eq "Sheldon"
    end
  end


end
