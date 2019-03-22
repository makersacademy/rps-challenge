require 'player'

describe Player do
  it 'Creates a new player with a name' do
    player = Player.new("Sam")
    expect(player.name).to eq "Sam"
  end

  it 'delivers a random choice of option for a computer player' do
    player = Player.new("Computer")
    expect(player.random_choice).to eq("Rock") | eq("Paper") | eq("Scissors")
  end
end
