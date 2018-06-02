describe Player do
  subject { described_class.new('Will') }

  describe '#name' do
    it 'should initialize with a name' do
      expect(subject.name).to eq 'Will'
    end
  end

  describe '#move' do
    it 'should be able to store a move' do
      subject.move = :rock
      expect(subject.move).to eq :rock
    end
  end
end
