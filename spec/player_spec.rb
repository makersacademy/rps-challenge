require 'player'

describe Player do
  let(:type) { Player }
  subject { type.new('Monkey') }

  describe '.initialize' do
    it 'initializes with name' do
      expect(subject).to respond_to(:name)
    end
    it 'name is set' do
      expect(subject.name).to eq('Monkey')
    end
  end
end
