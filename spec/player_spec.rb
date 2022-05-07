require 'player'

describe Player do
  subject(:player) {Player.new('Dusty')}

  it 'when initialized it has the correct number of arguments' do
    expect(Player.new('Dusty')).to be_a(Player) 
  end
  it 'can return given name' do
    expect(player.name).to eq 'Dusty'
  end

end