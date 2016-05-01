require 'player'

describe Player do
  subject(:player) { described_class.new(:player_name) }

  it {is_expected.to respond_to(:name)}

  it 'returns player name' do
    expect(player.name).to eq :player_name
  end

end