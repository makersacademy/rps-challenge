require 'player'

describe Player do
  let(:subject) { described_class.new('User02') }
  
  describe '#name' do
    it 'has a name' do
      expect(subject.name).to eq 'User02'
    end
  end
end
