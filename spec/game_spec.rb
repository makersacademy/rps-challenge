require 'game'

describe Game do
  subject(:game) { described_class.new("Allanon") }

  it 'allows registered player to play game' do
    expect(game.player).to(eq("Allanon"))
  end
end
