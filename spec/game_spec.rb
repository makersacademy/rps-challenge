require 'game'

describe Game do
  subject(:game) { described_class.new("Sophie", "Robot") }

  it 'lets player1 play the game' do
    expect(game.player1).to(eq("Sophie"))
  end

  it 'lets player2 play the game' do
    expect(game.player2).to(eq("Robot"))
  end

end
