describe Player do
  subject(:player) { described_class.new("George")}

  describe '#self.add player and self.player' do
    before { described_class.add(player.object_id, player) }

    it 'adds a players' do
      expect(described_class.players).not_to be_empty
    end

    it 'finds the player' do
      expect(described_class.find(player.object_id)).to be player
    end

  end

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
