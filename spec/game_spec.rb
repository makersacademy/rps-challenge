require 'game'

describe Game do
  # Make sure you don't go astray here, are these tests really doing what you
  # think they are?
  let(:player_one) { double :player_one }
  let(:player_two) { double :player_two }
  let(:game) { described_class.new(player_one, player_two) }
  it 'can make a game with players' do
    expect(game.player_1).to eq player_one
  end

  it 'can report whether a player has won' do
    expect(game.won).to eq nil
  end

  it 'can make a player win' do
    game.victory(player_one)
    expect(game.won).to eq "#{player_one} has won!"
  end

  it 'raises an error when the victorious player is not a player' do
    expect { game.victory('Mark') }.to raise_error "That's not a player!"
  end

  it 'has two rounds won counters' do
    expect(game.player_1_wins).to eq 0
    expect(game.player_2_wins).to eq 0
  end

  it 'a player can win a round' do
    game.win_round(player_one)
    expect(game.player_1_wins).to eq 1
  end

  it 'raises an error when the round is won by a non-player' do
    expect { game.victory('Mark') }.to raise_error "That's not a player!"
  end

  it 'will make a player win when the round counters equal 3' do
    3.times { game.win_round(player_one) }
    expect(game.won).to eq "#{player_one} has won!"
  end
end
