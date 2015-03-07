require 'player'

describe Player do

  let(:player){Player.new("Ryu")}


  it 'can have a name' do
    expect(player.name).to eq "Ryu"
  end





end