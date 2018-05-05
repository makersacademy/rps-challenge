describe Computer do
  subject(:computer) { described_class.new}

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq "The Computer"
    end
  end

  describe '#has_weapon?' do
    it 'returns the false when not set' do
      expect(computer.has_weapon?).to be false
    end

    it 'returns true when set' do
      allow(described_class::WEAPONS).to receive(:sample).and_return(:rock)
      computer.set_weapon
      expect(computer.weapon).to be :rock
    end
  end

  describe '#remove_weapon' do
    it 'removes the weapon' do
      computer.remove_weapon
      expect(computer.has_weapon?).to be false
    end
  end

end
