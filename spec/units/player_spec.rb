require './app/models/player'

describe Player do
  subject { described_class.new('James') }
  describe 'instantiation' do
    it 'name is set to argument' do
      expect(subject.name).to eq('James')
    end
  end

  describe '#move' do
    it '@move is set to argument' do
      subject.move = :rock
      expect(subject.move).to eq(:rock)
    end
  end

  describe '#computer?' do
    it 'returns false' do
      expect(subject.computer?).to eq(false)
    end
  end
end
