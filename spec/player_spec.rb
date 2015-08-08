require 'player'

describe Player do
  let(:opponent) { instance_double Player }
  let(:moves) { instance_double Moves }
  before(:each) do
    subject.opponent = opponent
    subject.moves = moves
    allow(moves).to receive(:list) { [:rock, :paper, :scissors] }
  end

  it 'can choose the rock move' do
    expect(subject.choose(:rock)).to eq [:rock]
  end

  it 'can choose the paper move' do
    expect(subject.choose(:paper)).to eq [:paper]
  end

  it 'can choose the scissors move' do
    expect(subject.choose(:scissors)).to eq [:scissors]
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

  it 'rock beats scissors' do
    subject.choose(:rock)
    allow(subject.opponent).to receive(:choice) { [:scissors] }
    expect(subject.winner?).to eq true
  end

  it 'paper beats rock' do
    subject.choose(:paper)
    allow(subject.opponent).to receive(:choice) { [:rock] }
    expect(subject.winner?).to eq true
  end

  it 'scissors beats paper' do
    subject.choose(:scissors)
    allow(subject.opponent).to receive(:choice) { [:paper] }
    expect(subject.winner?).to eq true
  end

  it 'winner? method returns false when both players choose rock' do
    subject.choose(:rock)
    allow(subject.opponent).to receive(:choice) { [:rock] }
    expect(subject.winner?).to eq false
  end

  it 'winner? method returns false when both players choose paper' do
    subject.choose(:paper)
    allow(subject.opponent).to receive(:choice) { [:paper] }
    expect(subject.winner?).to eq false
  end

  it 'winner? method returns false when both players choose scissors' do
    subject.choose(:scissors)
    allow(subject.opponent).to receive(:choice) { [:scissors] }
    expect(subject.winner?).to eq false
  end
end
