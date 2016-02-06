require 'player'

describe Player do
  subject(:matt){ described_class.new('Matt',nil) }


  describe '#name' do
    it 'returns player name' do
      expect(matt.name).to eq('Matt')
    end
  end

  describe '#choose' do
    it 'allow playe to choose a weapon' do
      expect(matt).to respond_to(:choose).with(1).argument
    end
  end

  describe '#weapon' do
    it 'returns the players chosen weapon' do
      expect(matt.weapon).to eq('ROCK')
    end
  end
end
