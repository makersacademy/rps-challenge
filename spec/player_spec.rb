require 'player'

describe Player do
  subject(:player) {Player.new('maggie')}
  DEFAULT_SCORE = 0

  describe 'returns the player name' do
    it 'returns the name' do
      expect(player.name).to eq('maggie')
    end
    it 'returns the score' do
      expect(player.score).to eq DEFAULT_SCORE
    end

  end

end
