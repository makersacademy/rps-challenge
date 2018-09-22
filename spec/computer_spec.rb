require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  context '#choice' do
    it 'returns paper' do
      allow_any_instance_of(Array).to receive(:sample) {'Paper'}
      expect(computer.choice).to eq 'Paper'
    end

    it 'returns rock' do
      allow_any_instance_of(Array).to receive(:sample) {'Rock'}
      expect(computer.choice).to eq 'Rock'
    end

    it 'returns scissors' do
      allow_any_instance_of(Array).to receive(:sample) {'Scissors'}
      expect(computer.choice).to eq 'Scissors'
    end
  end
end
