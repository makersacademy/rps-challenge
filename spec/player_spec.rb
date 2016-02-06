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

  describe '#computer_response' do
    it 'returns computer response' do
      allow(matt).to receive(:computer_response).and_return('PAPER')
      expect(matt.computer_response).to eq('PAPER')
    end
  end
end
