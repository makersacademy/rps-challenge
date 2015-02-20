require 'player'


describe Player do

  let(:player){Player.new("Costas")}
  let(:move){double :move, options: { 1 => "rock"}}

  it 'has a name' do
    expect(player.name).to eq "Costas"
  end

  it 'can make a move' do
    expect(move.options[1]).to eq "rock"
  end

end