require 'player'

describe Player do
  subject(:player) { described_class.create('Susan') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Susan')
    end
  end

  describe '#choice' do
    it 'stores its choice of move' do
      subject.store_choice('rock')
      expect(subject.choice).to eq('rock')
    end 
  end
end
