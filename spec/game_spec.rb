require "game"

describe Game do 
  let(:game) { Game.new("player1", "player2") }
  it { expect(game.players).to match_array(["player1", "player2"]) }
end
