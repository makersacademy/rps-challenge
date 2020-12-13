require 'player'

describe 'Player' do
  let(:player) { Player.new("Harry") }

  it 'takes in the name' do
    expect(player.name).to eq "Harry"
  end

  it 'chooses what to play' do
    player.choose("rock")
    expect(player.choice).to eq :rock
  end

end