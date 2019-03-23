require 'player'
describe Player do

  subject(:player_class) { described_class.new('Player 1') }

  it 'creates a player instance that knows its name' do
    expect(player_class.name).to eq 'Player 1'
  end
end