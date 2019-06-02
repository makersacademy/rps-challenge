require 'player'

describe Player do
  it 'can be created with a name' do
    my_player = Player.new('Jamiroquai')

    expect(my_player.name).to eq('Jamiroquai')
  end

  it 'can have a move' do
    my_player = Player.new('Jamiroquai')

    my_player.pick_weapon('rock')

    expect(my_player.weapon).to eq('rock')
  end
end
