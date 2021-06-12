require 'player'

RSpec.describe Player do
  it 'can return the name of the player' do
    player = Player.new('Fabio')

    expect(player.player_1).to eq('Fabio')
  end
end
