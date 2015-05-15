require 'capybara/rspec'
require 'game'
require 'player'

feature 'Set up a game of rock, paper, scissors' do

  let(:game) { Game.new Player }

  scenario 'Rock and rock will draw' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
  end

  scenario 'Paper and paper will draw' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
  end

  scenario 'Scissors and scissors will draw' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
  end

  scenario 'Player 1 beats player 2 with paper against rock' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
  end

  scenario 'Player 1 beats player 2 with rock against scissors' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
  end

  scenario 'Player 1 beats player 2 with scissors against paper' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
  end

  scenario 'Player 2 beats player 1 with paper against rock' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
  end

  scenario 'Player 2 beats player 1 with rock against scissors' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
  end

  scenario 'Player 2 beats player 1 with scissors against paper' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
  end

end