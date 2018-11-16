require 'game'

describe Game do
  let(:player1) { double(:player1, name: "Ted", choice: "rock") }
  let(:player2) { double(:player2, name: "Phil", choice: "scissors") }
  subject(:game) { Game.new(player1, player2) }

  it 'accepts two players in initialization' do
    expect(game.player1).to eq(player1)
    expect(game.player2).to eq(player2)
  end

  it 'calculates the correct result' do
    expect(game.result).to match("Ted wins, Phil loses!")
  end
end
