require './lib/engine'

RSpec.describe Engine do

  context 'returns Rock, Paper, Scissors at random' do
    it 'returns Rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      expect(subject.random).to eq('Rock')
    end
    it 'returns Paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
      expect(subject.random).to eq('Paper')
    end
    it 'returns Scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      expect(subject.random).to eq('Scissors')
    end
  end

end
