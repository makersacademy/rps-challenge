require 'player'

describe Player do
  let(:player) { Player.new("Crazy Teaspoon") }

  it 'initializes a name on a new player instance' do
    expect(player.player_name).to eq("Crazy Teaspoon")
  end

end
