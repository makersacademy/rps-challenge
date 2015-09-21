require 'computer'

describe Computer do
  it 'computer opponent returns :rock, :paper, :scissors, :spock, or :lizard' do
    expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors).or eq(:lizard).or eq(:spock)
  end

  it 'returns :paper with a seeded random of 34' do
    srand(34)
    expect(subject.choice).to eq(:paper)
  end

  it 'returns :spock with seed random of 678' do
    srand(678)
    expect(subject.choice).to eq(:spock)
  end
end
