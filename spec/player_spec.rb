require 'player'

RSpec.describe Player do
  it 'returns name' do
    player = Player.new(double(:name))
    expect(player.name).to eq player.name
  end
end