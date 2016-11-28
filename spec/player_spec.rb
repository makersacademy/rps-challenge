require 'player'

describe Player do
  subject(:player) {Player.new('Liz')}

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Liz'
    end
  end

  describe '#player_choice' do
    it 'returns rock if player chooses rock' do
      player.choose(:rock)
      expect(player.weapon).to eq :rock
    end
    it 'returns paper if player chooses paper' do
      player.choose(:paper)
      expect(player.weapon).to eq :paper
    end
    it 'returns scissors if player chooses scissors' do
      player.choose(:scissors)
      expect(player.weapon).to eq :scissors
    end
  end

end
