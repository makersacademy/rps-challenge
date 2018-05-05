describe Player do
  subject(:player) { described_class.new("George")}

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq "George"
    end
  end

  describe '#has_weapon?' do
    it 'returns the false when not set' do
      expect(player.has_weapon?).to be false
    end

    it 'returns true when set' do
      player.set_weapon(:rock)
      expect(player.weapon).to be :rock
    end
  end

  describe '#remove_weapon' do
    it 'removes the weapon' do
      player.remove_weapon
      expect(player.has_weapon?).to be false
    end
  end

end
