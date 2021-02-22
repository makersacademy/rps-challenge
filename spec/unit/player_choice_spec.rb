require 'rps_game'

describe Rps_Game do
  let(:game) { Rps_Game.new }
  it 'allows a player to choose from RPS' do
    expect(game).to receive(:add_player)
    game.add_player("Jay", "rock")
  end

end