require 'player'

describe Player do
  subject(:player) { described_class.new("Allanon") }

  describe '#name' do
    it 'confirms the name of the player' do
      expect(player.name).to(eq("Allanon"))
    end
  end

  describe '#weapon selected' do
    it 'confirms the weapon selected' do
      player.weapon_selector("Scissors")
      expect(player.weapon).to(eq("Scissors"))
    end
  end
end
