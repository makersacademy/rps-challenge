require './models/player.rb'

describe Player do

  subject(:player_1) { Player.new('James', 'scissors') }

  it 'initializes with a name' do
    expect(player_1.name).to eq 'James'
  end

  it 'initializes with a move' do
    expect(player_1.move).to eq 'scissors'
  end

end