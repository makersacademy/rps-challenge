require 'player'

describe Player do
  subject(:player) { described_class.new("Sheldon") }

  describe 'initialisation' do
    it 'returns a name' do
      expect(player.name).to eq "Sheldon"
    end
  end

  describe '#weapon=' do
    it 'can be set to rock' do
      player.weapon = :rock
      expect(player.weapon).to eq :rock
    end

    it 'can be set to paper' do
      player.weapon = :paper
      expect(player.weapon).to eq :paper
    end

    it 'can be set to scissors' do
      player.weapon = :scissors
      expect(player.weapon).to eq :scissors
    end

    it 'fails for any other weapon' do
      expect { player.weapon = :spock }.to raise_error "Invalid weapon"
    end
  end
end
