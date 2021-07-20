require 'player' 

describe Player do

  let(:player) { Player.new('Luke') }

  it 'should have a name by default' do
    expect(player.name).to eq('Luke')
  end
end
