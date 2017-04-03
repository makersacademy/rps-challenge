require 'player'

describe Player do
  subject(:player) {described_class.new("Will")}

  it 'returns players name' do
    expect(player.name).to eq "Will"
  end

  it 'sets the players choice' do
    player.get_choice(:rock)
    expect(player.choice).to eq :rock
  end
end
