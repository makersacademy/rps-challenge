require 'player'

describe Player do
  subject(:matt){ described_class.new('Matt') }


  describe '#name' do
    it 'returns player name' do
      expect(matt.name).to eq('Matt')
    end
  end

  describe '#choose' do
    it 'allow playe to choose a weapon' do
      matt.choose('ROCK')
      expect(matt.weapon).to eq('ROCK')
    end
  end
end
