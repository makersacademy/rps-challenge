require 'game'

describe Game do
  let(:game) { Game.new("player", "computer") }
  let(:player) { double("player", player_choice: "rock") }
  let(:computer) { double("computer", computer_choice: "scissors") }

  it 'checks players array comtains player name and computer name' do
    expect(game.players).to eq(["player", "computer"])
  end

  it 'returns player as the winner of the game' do
    expect(game.rps(player.player_choice, computer.computer_choice)).to eq('player')
  end

end
