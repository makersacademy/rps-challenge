require 'player'

describe Player do 

  let(:player) { Player.new("Vlad") }

  it 'has a name' do
    expect(player.name).to eq "Vlad"
  end
   
  it 'chooses a weapon' do
    player.choose(:rock)
    expect(player.weapon).to eq(:rock)
  end
  
end
