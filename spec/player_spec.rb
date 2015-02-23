require 'player'

describe 'Player' do
  let(:player){Player.new}
  
  it 'can choose an option' do
    allow(player).to receive(player.selection=(:rock)).and_return(:rock)
    expect(player.selection).to eq(:rock)
  end

end