require 'game'

RSpec.describe Game do
  it 'returns player name' do
    player = Player.new(double(:name))
    expect(player.name).to eq player.name
  end



end