describe Player do
  subject(:Kitten) { Player.create('Kitten') }

  describe '#self.create' do
    it 'creates a player object' do
      expect(subject).to be_an_instance_of(Player)
    end
  end

  describe '#self.instance' do
    it 'returns the player object' do
      expect(Player.instance).to be_an_instance_of(Player)
    end
  end

  describe '#self.name' do
    it 'returns the player name' do
      expect(subject.name).to eq('Kitten')
    end

  end
end