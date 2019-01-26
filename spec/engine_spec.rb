require './lib/engine'

RSpec.describe Engine do

  context 'returns Rock, Paper, Scissors at random' do
    it 'returns Rock' do
      allow(subject).to receive(:random).and_return('Rock')
      expect(subject.random).to eq('Rock')
    end
    it 'returns Paper' do
      allow(subject).to receive(:random).and_return('Paper')
      expect(subject.random).to eq('Paper')
    end
    it 'returns Scissors' do
      allow(subject).to receive(:random).and_return('Scissors')
      expect(subject.random).to eq('Scissors')
    end
  end

end
