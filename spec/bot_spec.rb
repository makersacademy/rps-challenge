require 'bot'

describe Bot do
  it 'gives itself a name' do
    srand(1)
    expect(Bot.name).to eq "Leonardbot"
  end
  it 'picks spock' do
    srand(0)
    expect(Bot.play).to eq :spock
  end
  it 'picks lizard' do
    srand(1)
    expect(Bot.play).to eq :lizard
  end
  it 'picks scissors' do
    srand(3)
    expect(Bot.play).to eq :scissors
  end
end
