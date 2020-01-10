require 'player'

describe Player do

  subject(:player){described_class.new('name')}
  describe '#increment_score' do
    it 'increases or reduces score' do
      expect{player.increment_score(0)}.to change{player.score}.by 0
    end
  end
end
