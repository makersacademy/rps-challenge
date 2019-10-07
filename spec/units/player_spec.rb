require 'player'

describe Player do 
  subject(:player) { described_class.new('Vlad') }

  it 'has a name' do
    expect(player.name).to eq "Vlad"
  end
   
  it 'selects a weapon' do
    expect(player.weapon).to eq(nil)
  end
  
end
