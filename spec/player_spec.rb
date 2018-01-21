require 'player'
require 'pry'

describe Player do

  subject(:player) {described_class.new("Teddy") }

    it 'records the player name as an instance variable' do
      expect(player.name).to eq "Teddy"
    end

  describe '#selection' do
    it 'returns an error if the player does not select a RPS weapon' do
      weapon = "spoon"
      expect { player.selection(weapon) }.to raise_error("not a possible weapon")
    end

    it 'if selected, records an RPS weapon as an instance variable' do
      weapon = "rock"
      player.selection(weapon)
      expect(player.weapon).to eq weapon
    end
  end
end
