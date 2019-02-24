require 'game'
describe Game do

  it 'Ensures that scissors trumps over paper when playing' do
    game = Game.create
    expect(game.play(:scissors, :paper)).to eq :scissors

  end

  it 'Ensures that scissors trumps over paper when playing' do
    game = Game.create
    expect(game.play(:paper, :scissors)).to eq :scissors

  end

  it 'Ensures that rock trumps over scissors when playing' do
    game = Game.create
    expect(game.play(:rock, :scissors)).to eq :rock

  end

  it 'Ensures that rock trumps over scissors when playing' do
    game = Game.create
    expect(game.play(:scissors, :rock)).to eq :rock

  end

  it 'Ensures that paper trumps over rock when playing' do
    game = Game.create
    expect(game.play(:paper, :rock)).to eq :paper

  end

  it 'Ensures that paper trumps over rock when playing' do
    game = Game.create
    expect(game.play(:rock, :paper)).to eq :paper
  end

  it 'Ensures that none of the players are winners if both have the same weapon' do
    game = Game.create
    expect(game.play(:rock, :rock)).to eq nil


  end
  it 'returns its stored instance' do

    game = Game.create
    expect(Game.instance).to equal game
  end
end
