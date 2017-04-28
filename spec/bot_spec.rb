require 'bot'

describe Bot do
  it 'picks rock' do
    srand(0)
    expect(Bot.play).to eq :rock
  end
  it 'picks paper' do
    srand(1)
    expect(Bot.play).to eq :paper
  end
  it 'picks scissors' do
    srand(3)
    expect(Bot.play).to eq :scissors
  end
end
