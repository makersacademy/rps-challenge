require 'moves'

describe Moves do
  it 'contains the right moves' do
    expect(subject.list).to eq [:rock, :paper, :scissors, :spock, :lizard]
  end

  it 'can return a move when random_move is called' do
    allow(subject.list).to receive(:sample) { :rock }
    expect(subject.random_move).to eq :rock
  end

  it 'knows that rock beats scissors' do
    expect(subject.beats?(:rock, :scissors)).to eq true
  end

  it 'knows that rock beats lizard' do
    expect(subject.beats?(:rock, :lizard)).to eq true
  end

  it 'knows that rock loses to paper' do
    expect(subject.beats?(:rock, :paper)).to eq false
  end

  it 'knows that rock loses to spock' do
    expect(subject.beats?(:rock, :spock)).to eq false
  end

  it 'knows that paper beats rock' do
    expect(subject.beats?(:paper, :rock)).to eq true
  end

  it 'knows that paper beats spock' do
    expect(subject.beats?(:paper, :spock)).to eq true
  end

  it 'knows that paper loses to scissors' do
    expect(subject.beats?(:paper, :scissors)).to eq false
  end

  it 'knows that paper loses to lizard' do
    expect(subject.beats?(:paper, :lizard)).to eq false
  end

  it 'knows that scissors beats paper' do
    expect(subject.beats?(:scissors, :paper)).to eq true
  end

  it 'knows that scissors beats lizard' do
    expect(subject.beats?(:scissors, :lizard)).to eq true
  end

  it 'knows that scissors loses to rock' do
    expect(subject.beats?(:scissors, :rock)).to eq false
  end

  it 'knows that scissors loses to spock' do
    expect(subject.beats?(:scissors, :spock)).to eq false
  end

  it 'knows that spock beats scissors' do
    expect(subject.beats?(:spock, :scissors)).to eq true
  end

  it 'knows that spock beats rock' do
    expect(subject.beats?(:spock, :rock)).to eq true
  end

  it 'knows that spock loses to paper' do
    expect(subject.beats?(:spock, :paper)).to eq false
  end

  it 'knows that spock loses to lizard' do
    expect(subject.beats?(:spock, :lizard)).to eq false
  end

  it 'knows that lizard beats paper' do
    expect(subject.beats?(:lizard, :paper)).to eq true
  end

  it 'knows that lizard beats spock' do
    expect(subject.beats?(:lizard, :spock)).to eq true
  end

  it 'knows that lizard loses to rock' do
    expect(subject.beats?(:lizard, :rock)).to eq false
  end

  it 'knows that lizard loses to scissors' do
    expect(subject.beats?(:lizard, :scissors)).to eq false
  end

  it 'know that two rocks return false' do
    expect(subject.beats?(:rock, :rock)).to eq false
  end

  it 'know that two papers return false' do
    expect(subject.beats?(:paper, :paper)).to eq false
  end

  it 'know that two scissors return false' do
    expect(subject.beats?(:scissors, :scissors)).to eq false
  end

  it 'know that two spocks return false' do
    expect(subject.beats?(:spock, :spock)).to eq false
  end

  it 'know that two lizards return false' do
    expect(subject.beats?(:lizard, :lizard)).to eq false
  end
end
