require './lib/player'

describe Player do
  subject(:player) { described_class.new('Jon') }
  describe '#initialize' do
    it 'should know the name' do
      expect(player.name).to eq 'Jon'
    end
    
    it 'should have a score of zero' do
      expect(player.score).to be_zero
    end

    it 'should not have a current choice' do
      expect(player.choice).to be_nil
    end
  end
end
