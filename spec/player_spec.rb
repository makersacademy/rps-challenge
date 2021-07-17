require 'player' 

describe Player do
subject(:player) { Player.new('Luke') }

  it 'should have a name' do
  expect(player.name).to eq('Luke')
  end
end