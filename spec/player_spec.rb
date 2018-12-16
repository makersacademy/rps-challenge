require 'player'

describe Player do

  it ' Has a name ' do
    player1 = Player.new('Fulgrim')
    expect(player1.name).to eq "Fulgrim"
  end

end 
