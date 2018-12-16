require 'player'

describe Player do

  it ' Has a name ' do
    player1 = Player.new('Fulgrim')
    expect(player1.name).to eq "Fulgrim"
  end

  it 'Records a choice' do
    player1 = Player.new('Fulgrim')
    player1.choice('rock')
    expect(player1.weapon).to eq('rock')
  end 

end
