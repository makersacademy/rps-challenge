require 'game'

describe Game do
  let(:player) {"rock"}
  let(:computer) {"rock"}
  subject(:game) {described_class.new(player, computer)}

  it 'can return the player\'s choice' do
    expect(game.player_choice).to eq player
  end

  it 'can return the computer\'s choice' do
    expect(game.computer_choice).to eq computer
  end

  it 'returns true when player_choice = computer_choice' do
    expect(game.draw?).to eq true
  end

  it 'returns true when a player has won' do
    player_wins = "scissors"
    game_win = described_class.new(player, player_wins)
    expect(game_win.player_wins?).to eq true
  end
end
