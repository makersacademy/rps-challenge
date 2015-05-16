require 'player'
require 'game'

feature 'starting a game of rock, paper, scissors' do

  scenario 'create a player with a name' do
    player1 = Player.new('Name')
    expect(player1.name).to eq 'Name'
  end

  scenario 'start a game with a player' do
    player1 = Player.new('Name')
    game = Game.new(player1)
    expect(game.player).to be player1
  end

  scenario 'a randomly generated response is outputted' do
    player1 = Player.new('Name')
    game = Game.new(player1)
    allow(game).to receive(:generate).and_return 'rock'
    expect(game.play('scissors')).to eq "Name chooses: scissors, Computer chooses: rock"
  end

  scenario 'a player can win the game' do
    player1 = Player.new('Name')
    game = Game.new(player1)
    allow(game).to receive(:generate).and_return 'rock'
    game.play('paper')
    expect(game.winner).to eq 'Name'
  end

  scenario 'the computer can win the game' do
    player1 = Player.new('Name')
    game = Game.new(player1)
    allow(game).to receive(:generate).and_return 'paper'
    game.play('rock')
    expect(game.winner).to eq 'Computer'
  end
end