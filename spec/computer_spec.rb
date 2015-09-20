require 'computer'

describe Computer do
  it 'computer opponent returns :rock, :paper, :scissors, :spock, or :lizard' do
    expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors).or eq(:lizard).or eq(:spock)
  end
end
