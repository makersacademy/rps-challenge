require 'player'
describe Player do
  subject { described_class.new("Haz") }
  it 'initializes with a name' do
    expect(subject.name).to eq "Haz"
  end

  describe '#add_point' do
    it 'adds 1 to the score' do
      subject.add_point
      expect(subject.score).to eq 1
    end
  end
end
