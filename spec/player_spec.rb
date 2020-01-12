require 'player'

describe Player do
  subject(:player) { described_class.new("name1") }

  it 'returns the player name' do
    expect(player.name).to eq "name1"
  end

  it 'sets choice based on move user passes in' do
    player.make_choice(:rock)
    expect(player.choice).to eq :rock
  end

end
