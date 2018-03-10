require 'player'

describe Player do

  subject(:subject) { described_class.new('katie')}

  it 'initialises with player name' do
    expect(subject.name).to eq 'katie'
  end

  describe '#add_point' do
    it 'add 1 point to the score' do
      subject.add_point
      expect(subject.score).to eq 1
    end
  end
end
