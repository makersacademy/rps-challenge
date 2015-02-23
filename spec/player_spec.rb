require 'player'

describe Player do
  let(:player){Player.new('Guido')}
  let(:shapes){double :shapes}

  it 'has a name' do
    expect(player.name).to eq 'Guido'
  end

  it 'can choose a shape' do
    player.shapes = shapes
    expect(player.shapes).to eq shapes
  end
  
end