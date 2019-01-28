require './lib/player'

describe Player do
  let(:player) { Player.new('Josef') }

  it 'is passed a name on initializing' do
    expect(player.name).to eq 'Josef'
  end
end
