require 'game'

describe Game do
  let(:player) {"rock"}
  let(:computer) {"rock"}
  subject(:game) {described_class.new(player, computer)}

  it 'can return the player\'s choice' do
    expect(game.player).to eq player
  end

  it 'can return the computer\'s choice' do
    expect(game.computer).to eq computer
  end

  it 'returns true when a player has won' do
    player_wins = "scissors"
    game_win = described_class.new(player, player_wins)
    expect(game_win.player_wins?).to eq true
  end


  it 'returns true when a player has lost' do
    computer_wins = "paper"
    game_lose = described_class.new(player, computer_wins)
    expect(game_lose.player_loses?).to eq true
  end

  it 'returns the right verb' do
    player_paper = "paper"
    computer_rock = "rock"
    game_verb = described_class.new(player_paper,computer_rock)
    expect(game_verb.verb).to eq "covers"
  end
end
