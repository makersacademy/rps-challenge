require 'game'

describe Game do
  let(:player) { double :player, name: 'Player', type: :human, wins: 3 }
  let(:bot) { double :player, name: 'Bot', type: :bot, wins: 0 }
  let(:game) { Game.new(player, player, 5) }

  it 'has player' do
    expect(game.player1.name).to eq 'Player'
  end

  it 'gets best_of number' do
    expect(game.best_of).to eq 5
  end

  it 'has default best of 5' do
    default_game = Game.new(player, player, "")
    expect(default_game.best_of).to eq 5
  end

  it 'knows when someone has won' do
    expect(game).to be_game_over
  end

  it 'can have bots' do
    default_game = Game.new(player, bot, "")
    expect(default_game.player2.type).to eq :bot
  end
end
