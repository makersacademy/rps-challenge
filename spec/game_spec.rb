require 'game'

describe '#game' do

  it 'initializes with a player' do
    game = Game.new
    expect(game.player_1_score).to eq 0
  end

  it 'initializes with a computer' do
    game = Game.new
    expect(game.player_2_score).to eq 0
  end

  it 'can select an option at random' do
    game = Game.new
    expect(game.computer_select).not_to be nil
  end

  it 'will give the score so far' do
    game = Game.new
    game.round(:rock, :paper)
    expect(game.score).to eq('Player 0, Computer 1')
  end

  it 'paper beats rock' do
    game = Game.new
    expect(game.round(:paper, :rock)).to eq(:win)
  end

  it 'rock beats scissors' do
    game = Game.new
    expect(game.round(:rock, :scissors)).to eq(:win)
  end

  it 'scissors beats paper' do
    game = Game.new
    expect(game.round(:scissors, :paper)).to eq(:win)
  end

  it 'paper loses to scissors' do
    game = Game.new
    expect(game.round(:paper, :scissors)).to eq(:loss)
  end

  it 'rock loses to paper' do
    game = Game.new
    expect(game.round(:rock, :paper)).to eq(:loss)
  end

  it 'scissors loses to rock' do
    game = Game.new
    expect(game.round(:scissors, :rock)).to eq(:loss)
  end

  it 'paper draws with paper' do
    game = Game.new
    expect(game.round(:paper, :paper)).to eq(:draw)
  end

  it 'rock draws with rock' do
    game = Game.new
    expect(game.round(:rock, :rock)).to eq(:draw)
  end

  it 'scissors draws with scissors' do
    game = Game.new
    expect(game.round(:scissors, :scissors)).to eq(:draw)
  end

end
