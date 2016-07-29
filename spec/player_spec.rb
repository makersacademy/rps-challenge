require 'player'

describe Player do
  subject(:player) { described_class.new("Sophie") }

  describe '#name' do
    it 'returns the name of the player1' do
      expect(player.name).to(eq("Sophie"))
    end
  end

  describe '#weapon' do
    it 'returns the weapon chosen' do
      player.weapon_choice("Rock")
      expect(player.weapon).to(eq("Rock"))
    end
  end

end
