require 'player'

describe Player do
  let(:opponent) { instance_double Player }
  let(:moves) { instance_double Moves }
  before(:each) do
    subject.opponent = opponent
    allow(opponent).to receive(:choice) { [:rock] }
    subject.moves = moves
    allow(moves).to receive(:list) { [:rock, :paper, :scissors, :spock, :lizard] }
  end

  it 'can choose the rock move' do
    subject.choose(:rock)
    expect(subject.choice).to eq [:rock]
  end

  it 'can choose the paper move' do
    subject.choose(:paper)
    expect(subject.choice).to eq [:paper]
  end

  it 'can choose the scissors move' do
    subject.choose(:scissors)
    expect(subject.choice).to eq [:scissors]
  end

  it 'can choose the spock move' do
    subject.choose(:spock)
    expect(subject.choice).to eq [:spock]
  end

  it 'can choose the lizard move' do
    subject.choose(:lizard)
    expect(subject.choice).to eq [:lizard]
  end

  it 'cannot choose other moves' do
    expect { subject.choose(:cheat) }.to raise_error('Not a valid move!')
  end

  it 'can call the random_move' do
    allow(subject.moves).to receive(:random_move) { :rock }
    subject.random_move
    expect(subject.choice).to eq [:rock]
  end

  it 'knows about the opponent' do
    expect(subject.opponent).to be opponent
  end

  it 'winner? method receives beats? when called' do
    expect(subject.moves).to receive(:beats?)
    subject.winner?
  end
end
