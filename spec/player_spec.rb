require 'player'

describe Player do

  subject { described_class.new('Anna') }

  it 'returns players name' do
    expect(subject.name).to eq 'Anna'
  end

  describe '#make_move' do
    it 'displays the chosen move' do
    subject.make_move("Rock")
    expect(subject.move).to eq "Rock"
  end

  end
end
