describe Player do
  subject { described_class.new('Will') }

  describe '#name' do
    it 'should initialize with a name' do
      expect(subject.name).to eq 'Will'
    end
  end
end
