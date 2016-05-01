require 'player'

describe Player do
  let(:player) { described_class.new('Player') }

  it 'returns the player name' do
    expect(player.name).to eq 'Player'
  end

  it 'returns player selected weapon' do
    player.selected_weapon :ROCK
    expect(player.weapon).to eq :ROCK
  end

end
