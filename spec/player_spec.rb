require 'player'

describe Player do
  it 'has a name' do 
    player1 = Player.new('Dwayne')
    expect(player1.name).to eq 'Dwayne'
  end
end
