require 'computer'

describe Computer do
  it 'returns a random weapon' do
    expect([:rock, :paper, :scissors, :spock, :lizard]).to include(subject.type)
  end
end
