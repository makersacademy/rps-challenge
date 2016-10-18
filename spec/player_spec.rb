require 'player'

describe Player do

  subject(:player) {described_class.new("Felix")}

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq "Felix"
    end

    it 'starts with a player who hasn\'t made a choice' do
      expect(player.weapon).to eq nil
    end
  end

  describe '#weapon_choice' do
    it 'lets the player choose a rock as a weapon' do
      player.weapon_choice("ROCK")
      expect(player.weapon).to eq :rock
    end

  end
end
