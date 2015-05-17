require 'game'

# Is it good practice to test private methods using send?

describe Game do
  let(:player_one) { double :player_one, choice: "rock", name: 'mike' }
  let(:player_two) { double :player_two, choice: "rock", name: 'sarah' }
  let(:game) { described_class.new(player_one, player_two) }
  it 'can make a game with players' do
    expect(game.player_1).to eq player_one
  end

  it 'can add players to a pre-existing game' do
    new_game = described_class.new
    expect(new_game.add_player(player_one)).to eq player_one
  end

  it 'can report whether a player has won' do
    expect(game.won).to eq false
  end

  it 'can make a player win' do
    game.send(:victory, player_one)
    expect(game.won).to eq "#{player_one.name} has won!"
  end

  it 'raises an error when the victorious player is not a player' do
    expect { game.send(:victory, 'Mark') }.to raise_error "That's not a player"
  end

  it 'has round win counters for each player' do
    expect(game.player_1_wins).to eq 0
    expect(game.player_2_wins).to eq 0
  end

  it 'a player can win a round' do
    game.send(:win_round, player_one)
    expect(game.player_1_wins).to eq 1
  end

  it 'raises an error when the round is won by a non-player' do
    expect { game.send(:win_round, 'Ann') }.to raise_error "That's not a player"
  end

  it 'will make a player win when the round counter equals 3' do
    3.times { game.send(:win_round, player_one) }
    expect(game.won).to eq "#{player_one.name} has won!"
  end

  it 'can return draw when both players choose the same thing' do
    expect(game.round).to eq "Draw"
  end

  it 'can return a win for player 1 when they choose paper' do
    player_one = double :player_one, choice: "paper"
    game = described_class.new(player_one, player_two)
    game.round
    expect(game.player_1_wins).to eq 1
  end

  it 'can return a win for player 2 when player 1 chooses scissors' do
    player_one = double :player_one, choice: "scissors"
    game = described_class.new(player_one, player_two)
    game.round
    expect(game.player_2_wins).to eq 1
  end
end
