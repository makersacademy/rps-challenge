require_relative '../lib/player'

describe Player do
  subject = Player.new 'examplename'

  it 'should be initialized with a name' do
    expect(subject.name).to eq 'examplename'
  end

  it 'should be able to make a move' do
    expect(subject.make_move(:rock)).to eq :rock
  end

  it 'should increment the wins if player wins' do
    subject.win
    expect(subject.wins).to eq 1
  end

  it 'should increment the losses if player loses' do
    subject.lose
    expect(subject.losses).to eq 1
  end

  it 'should increment the draws if it is a draw' do
    subject.draw
    expect(subject.draws).to eq 1
  end

end