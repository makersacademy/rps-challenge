require 'player'

describe Player do
  let(:subject) {described_class.new('Jack')}

  describe '#name' do
    it 'knows it\'s name' do
      expect(subject.name).to eq 'Jack'
    end
  end
end
