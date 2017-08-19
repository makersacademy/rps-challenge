require 'player'

describe Player do
  let(:type) { described_class }
  subject { type.new('Monkey') }

  describe '.initialize' do
    it 'initializes with name' do
      expect(subject).to respond_to(:name)
    end
    it 'name is set' do
      expect(subject.name).to eq('Monkey')
    end
    it 'initializes with action' do
      expect(subject).to respond_to(:action)
    end
    it 'action is nil' do
      expect(subject.action).to eq(nil)
    end
  end
end
