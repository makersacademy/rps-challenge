require 'player'

describe Player do
  it 'returns :rock when rock selected' do
    subject.rock
    expect(subject.choice).to eq(:rock)
  end

  it 'returns :paper when paper selected' do
    subject.paper
    expect(subject.choice).to eq(:paper)
  end

  it 'returns :scissors when scissors selected' do
    subject.scissors
    expect(subject.choice).to eq(:scissors)
  end

  it 'returns :spock when spock selected' do
    subject.spock
    expect(subject.choice).to eq(:spock)
  end

  it 'returns :lizard when lizard selected' do
    subject.lizard
    expect(subject.choice).to eq(:lizard)
  end
end
