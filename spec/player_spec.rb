require './lib/player'

describe Player do
  let(:player){double :player, name: 'Mahmud'}

  it 'returns the player name' do
    expect(player.name).to eq 'Mahmud'
  end
  
end
