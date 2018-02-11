describe Player do

  subject(:player_1) { described_class.new("Telgi") }
  subject(:default_player) { described_class.new("") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Telgi"
    end

    it 'returns default name if nothing is entered' do
      expect(default_player.name).to eq "Human"
    end
  end

  describe '#choose' do
    it 'allows player one to select rock' do
      player_1.choose("Rock")
      expect(player_1.move).to eq :rock
    end
  end

  describe '#tally_score' do
    it 'increases player\'s score by 1 after victory' do
      expect{ player_1.tally_score }.to change { player_1.score }.by(1)
    end
  end

end
