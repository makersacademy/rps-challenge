require 'player'

describe Player do
  subject(:player) { described_class.new("PLAYER1") }
  it 'has a name' do
    expect(player.name).to eq("PLAYER1")
  end
end
