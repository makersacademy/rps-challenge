require 'capybara/rspec'
require 'game'
require 'player'

feature 'Set up a game of rock, paper, scissors' do

  let(:game) { Game.new Player }

  scenario 'Rock and rock will draw and no wins tallied' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Paper and paper will draw and no wins tallied' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Scissors and scissors will draw and no wins tallied' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq 'Draw!'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with paper against rock and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with rock against scissors and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with scissors against paper and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 2 beats player 1 with paper against rock and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with rock against scissors and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with scissors against paper and tallies win' do
    game = Game.new Player
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

end