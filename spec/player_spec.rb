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
    it 'initializes with score' do
      expect(subject).to respond_to(:score)
    end
    it 'score is 0' do
      expect(subject.score).to eq(0)
    end
  end
end
