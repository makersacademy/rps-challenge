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
      expect(player.choose_rock).to eq 'Rock'
    end
    it 'returns paper if player chooses paper' do
      expect(player.choose_paper).to eq 'Paper'
    end
    it 'returns scissors if player chooses scissors' do
      expect(player.choose_scissors).to eq 'Scissors'
    end
  end

end
