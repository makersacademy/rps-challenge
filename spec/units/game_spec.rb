require 'game'
describe Game do

  it 'gets created with 2 players' do
    player1 =  double :player1, weapon: :scissors
    player2 = double :player2, weapon: :paper
    game = Game.create(player1, player2)
    expect(game.player1).to equal player1
    expect(game.player2).to equal player2
  end

  it 'Ensures that scissors trumps over paper when playing' do
    player1 =  double :player1, weapon: :scissors
    player2 = double :player2, weapon: :paper
    game = Game.create(player1, player2)
    game.play
    expect(game.winner).to eq player1
  end

  it 'Ensures that scissors trumps over paper when playing' do
    player1 =  double :player1, weapon: :paper
    player2 = double :player2, weapon: :scissors
    game = Game.create(player1, player2)
    game.play
    expect(game.winner).to eq player2
  end

  it 'Ensures that rock trumps over scissors when playing' do
    player1 =  double :player1, weapon: :rock
    player2 = double :player2, weapon: :scissors
    game = Game.create(player1, player2)
    game.play
    expect(game.winner).to eq player1
  end

  it 'Ensures that paper trumps over rock when playing' do
    player1 =  double :player1, weapon: :paper
    player2 = double :player2, weapon: :rock
    game = Game.create(player1, player2)
    game.play
    expect(game.winner).to eq player1
  end

  it 'Ensures that none of the players are winners if both have the same weapon' do
    player1 =  double :player1, weapon: :paper
    player2 = double :player2, weapon: :paper
    game = Game.create(player1, player2)
    game.play
    expect(game.winner).to eq nil

  end
  it 'returns its stored instance' do
    player1 =  double :player1, weapon: :paper
    player2 = double :player2, weapon: :paper
    game = Game.create(player1, player2)
    expect(Game.instance).to equal game
  end
end
