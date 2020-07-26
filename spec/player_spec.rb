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

  describe '#make_move' do
    it 'gives the player a move' do
      subject.make_move('Rock')
      expect(subject.move).to eq 'Rock'
    end
  end
end
