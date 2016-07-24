require 'player'

describe Player do
  let(:weps) {double(:weapons,)}
  let(:subject) {described_class.new('Jack')}
  let(:weps_choices) {double(:choices_const)}
  describe '#name' do
    it 'knows it\'s name' do
      expect(subject.name).to eq 'Jack'
    end
  end
  describe'#choose' do
    it 'returns a number based on weapon choice' do
      stub_const("Weapons::CHOICES", rock: 0)
      expect(subject.choose('rock')).to eq 0
    end
  end
end
