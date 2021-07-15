require './lib/player'

describe Player do
  subject = Player.new('Xavier')

  it 'returns the player name' do
     expect(subject.name). to eq 'Xavier'
  end

  it 'returns the player weapon' do
    expect(subject.select(:rock)).to eq :rock
  end
end