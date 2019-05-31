require 'player'

describe Player do
  it 'can be created with a name' do
    my_player = Player.new('Jamiroquai')

    expect(my_player.name).to eq('Jamiroquai')
  end
end
