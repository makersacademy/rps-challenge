require 'player'

describe 'Player' do
  let(:player){Player.new}
  
  it 'can choose an option' do
    allow(player).to receive(player.selection=(:rock)).and_return(:rock)
    expect(player.selection).to eq(:rock)
  end

  it 'can have a name' do 
    allow(player).to receive(player.name=('Julian'))
    expect(player.name).to eq('Julian')
  end  

end