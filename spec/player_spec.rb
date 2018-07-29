require './lib/player'
describe Player do
  let(:subject) { described_class.new('Jack') }
  describe '#name' do
    it { expect(subject).to respond_to(:name) }
    it { expect(subject.name).to eq('Jack') }
  end
end
