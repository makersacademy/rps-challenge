require 'player'

describe Player do

  subject(:adam) { Player.new('Adam') }

  it 'registers the players names' do
    expect(adam.player_name).to eq("Adam")
  end

  it 'players make their moves' do
    adam.players_move("rock")
    expect(adam.move).to eq("rock")
  end

end
