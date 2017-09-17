require 'game'

describe Game do
  subject(:game) { described_class.new("Allanon", "Robert the Robot") }

  it 'allows registered player to play game' do
    expect(game.player1).to(eq("Allanon"))
  end

  it 'allows computer to play the game' do
    expect(game.player2).to(eq("Robert the Robot"))
  end
end
