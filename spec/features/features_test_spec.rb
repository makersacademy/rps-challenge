require 'capybara/rspec'
require 'game'
require 'player'

feature 'Set up a game of rock, paper, scissors' do

  let(:game) { Game.new Player }

  scenario 'Rock and rock will draw and no wins tallied' do
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Paper and paper will draw and no wins tallied' do
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Scissors and scissors will draw and no wins tallied' do
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with paper against rock and tallies win' do
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with rock against scissors and tallies win' do
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with scissors against paper and tallies win' do
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 2 beats player 1 with paper against rock and tallies win' do
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'paper'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with rock against scissors and tallies win' do
    p1_choice = game.player_1.choose 'scissors'
    p2_choice = game.player_2.choose 'rock'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with scissors against paper and tallies win' do
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'scissors'
    expect(game.result(p1_choice, p2_choice)).to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 1 reaches goal and wins the entire game' do
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    game.result(p1_choice, p2_choice)
    expect(game.winner).to eq game.player_1
  end

  scenario 'Player 2 reaches goal and wins the entire game' do
    p1_choice = game.player_1.choose 'rock'
    p2_choice = game.player_2.choose 'paper'
    game.result(p1_choice, p2_choice)
    expect(game.winner).to eq game.player_2
  end

  scenario 'Neither player has yet won game' do
    game = Game.new Player, 2
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    game.result(p1_choice, p2_choice)
    expect(game.winner).to eq nil
  end

  scenario 'States if game has yet been won' do
    p1_choice = game.player_1.choose 'paper'
    p2_choice = game.player_2.choose 'rock'
    game.result(p1_choice, p2_choice)
    expect(game.won?).to be true
  end

end