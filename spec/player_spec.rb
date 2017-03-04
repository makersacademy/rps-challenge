require 'player'

describe Player do
  subject(:player){Player.new('Susie')}

  describe 'name' do
    it 'knows its own name' do
      expect(player.name).to eq 'Susie'
    end
  end

  describe 'score' do
    it 'knows its score' do
      expect(player.score).to eq 0
    end
  end

  describe 'winning' do
    it 'score increases after winning' do
      expect(player.win).to eq 1
    end
  end

end
