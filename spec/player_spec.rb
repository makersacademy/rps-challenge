require 'player'

describe Player do
  before(:each) do
    @player = Player.new("Bob", [:rock, :paper, :scissors, :lizard, :spock])
  end

  it 'returns :rock when rock selected' do
    @player.choose('rock')
    expect(@player.choice).to eq(:rock)
  end

  it 'returns :paper when paper selected' do
    @player.choose('paper')
    expect(@player.choice).to eq(:paper)
  end

  it 'returns :scissors when scissors selected' do
    @player.choose('scissors')
    expect(@player.choice).to eq(:scissors)
  end

  it 'returns :spock when spock selected' do
    @player.choose('spock')
    expect(@player.choice).to eq(:spock)
  end

  it 'returns :lizard when lizard selected' do
    @player.choose('lizard')
    expect(@player.choice).to eq(:lizard)
  end

  it 'returns name ' do
    expect(@player.name).to eq("Bob")
  end

  it 'returns message if weapon not known' do
    @player.choose('spoon')
    expect(@player.choice).to eq("No known weapon")
  end
end
