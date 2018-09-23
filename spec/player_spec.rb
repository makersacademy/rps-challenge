require 'player'

describe Player do

  player = described_class.new('Skaiste')

  describe 'initialize'
    it "initializes with a player's name" do
        expect(player.name).to eq 'Skaiste'
    end

end
