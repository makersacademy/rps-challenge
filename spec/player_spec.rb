require 'player'

describe Player do

  it 'should return name of player' do
    player = Player.new('Chris')
    expect(player.name).to(eq('Chris'))
  end

  it 'should return a move' do
    player = Player.new('Chris')
    player.move = 'Rock'
    expect(player.move).to(eq('Rock'))
  end

  it 'can choose a random move' do
    player = Player.new('CPU')
    allow(player).to(receive(:randomise_move).and_return('Rock'))
    expect(player.randomise_move).to(eq('Rock'))
  end
end