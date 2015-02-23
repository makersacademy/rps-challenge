require 'player'


describe Player do

  let(:player){Player.new("Costas")}

  it 'has a name' do
    expect(player.name).to eq "Costas"
  end

  it 'can make a move' do
    player.make_move(1)
    expect(player.choice).to eq "rock"
  end

end