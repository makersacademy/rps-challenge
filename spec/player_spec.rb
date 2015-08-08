require_relative '../lib/player'

describe Player do
  subject = Player.new 'examplename'

  it 'should be initialized with a name' do
    expect(subject.name).to eq 'examplename'
  end

  it 'should be able to make a move' do
    expect(subject.make_move(:rock)).to eq :rock
  end

end