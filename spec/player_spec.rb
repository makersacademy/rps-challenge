require 'player'

describe Player do

  subject(:player) { described_class.new("Fred") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Fred"
    end
  end

  # describe '#player_move' do
  #   it ""
  # end
end
