require 'player'

describe 'Player' do
  let(:player) { Player.new('Filbert') }

  it 'has a name' do
    expect(player.name).to eq("Filbert")
  end
end