require 'player'

describe Player do

  let(:player_1) { double 'player_1'}
  subject(:player) { described_class.new(player_1) }

  it 'creates a new player when class is initialized' do
    expect(player.player_1).to eq player_1
  end
end
