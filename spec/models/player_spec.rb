require_relative '../../models/player'

describe Player do  
  let(:player) { Player.new('Lagethar') }
  it 'responds to #name' do
    expect(player.name).to eq('Lagethar')
  end
  it 'can make a move' do
    expect(player).to respond_to(:move)
  end
end