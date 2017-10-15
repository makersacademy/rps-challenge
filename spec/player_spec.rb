require 'player.rb'

describe Player do

  subject(:player) { Player.new('Dave') }
  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq 'Dave'
    end
  end

end
