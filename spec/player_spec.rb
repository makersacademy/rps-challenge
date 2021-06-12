require 'player'

RSpec.describe Player do
  it 'can return the name of the player' do
    player = Player.new('Fabio')

    expect(player.name).to eq('Fabio')
  end
end
