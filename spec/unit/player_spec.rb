require 'player'
describe Player do

  subject(:player) { described_class.new('Player 1') }

  it 'creates a player instance that knows its name' do
    expect(player.name).to eq 'Player 1'
  end

  it 'assigns a choice to itself' do
    player.choice("Rock")
    expect(player.user_choice).to eq 'Rock'
  end
end