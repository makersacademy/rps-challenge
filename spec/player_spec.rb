require 'player'

describe Player do

  let(:player) {Player.new("Harry")}

  it 'has a name when initialize' do
    expect(player.name).to eq "Harry"
  end

  it 'can choose rock' do
    player.choose("rock")
    expect(player.shape).to eq :rock
  end

  it 'can only choose from rock, paper, scissors, lizard or spock' do
    expect{player.choose "water"}.to raise_error "Please choose between rock, paper, scissors, lizard or spock."
  end

end
