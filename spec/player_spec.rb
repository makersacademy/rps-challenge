require 'player'

describe Player do
  subject(:fake_player1) { double('player', name: "Fake Player 1") }
  subject(:player) { described_class.new(fake_player1.name) }

  it 'on initialize it should store name' do
    expect(player.name).to eq(fake_player1.name)
  end
end
