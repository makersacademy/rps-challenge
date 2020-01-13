require 'player'

describe Player do

  subject(:player){described_class.new('name')}
  describe '#increment_score' do
    it 'increases or reduces score' do
      expect{player.add_point}.to change{player.score}.by 1
    end
  end
end
