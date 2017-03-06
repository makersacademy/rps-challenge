require 'player'

describe Player do

let (:player) { described_class.new("Bob") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Bob"
    end
  end
end
