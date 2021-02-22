require 'player'

describe Player do 
  subject { described_class.new('Anna') }
  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Anna')
    end
  end
end 
