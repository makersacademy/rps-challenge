require 'capybara/rspec'
require 'game'
require 'player'

feature 'Set up a game of rock, paper, scissors' do

  let(:game) { Game.new Player }

  scenario 'Rock and rock will draw and no wins tallied' do
    expect(game.result 'rock', 'rock').to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Paper and paper will draw and no wins tallied' do
    expect(game.result 'paper', 'paper').to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Scissors and scissors will draw and no wins tallied' do
    expect(game.result 'scissors', 'scissors').to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Lizard and Lizard will draw and no wins tallied' do
    expect(game.result 'lizard', 'lizard').to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Spock and Spock will draw and no wins tallied' do
    expect(game.result 'Spock', 'Spock').to eq 'draw'
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with lizard against paper and tallies win' do
    expect(game.result 'lizard', 'paper').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with lizard against Spock and tallies win' do
    expect(game.result 'lizard', 'Spock').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with paper against rock and tallies win' do
    expect(game.result 'paper', 'rock').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with paper against Spock and tallies win' do
    expect(game.result 'paper', 'Spock').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with rock against lizard and tallies win' do
    expect(game.result 'rock', 'lizard').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with rock against scissors and tallies win' do
    expect(game.result 'rock', 'scissors').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with scissors against lizard and tallies win' do
    expect(game.result 'scissors', 'lizard').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with scissors against paper and tallies win' do
    expect(game.result 'scissors', 'paper').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with Spock against rock and tallies win' do
    expect(game.result 'Spock', 'rock').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 1 beats player 2 with Spock against scissors and tallies win' do
    expect(game.result 'Spock', 'scissors').to eq game.player_1
    expect(game.player_1.wins).to eq 1
    expect(game.player_2.wins).to eq 0
  end

  scenario 'Player 2 beats player 1 with lizard against paper and tallies win' do
    expect(game.result 'paper', 'lizard').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with lizard against Spock and tallies win' do
    expect(game.result 'Spock', 'lizard').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with paper against rock and tallies win' do
    expect(game.result 'rock', 'paper').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with paper against Spock and tallies win' do
    expect(game.result 'Spock', 'paper').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with rock against lizard and tallies win' do
    expect(game.result 'lizard', 'rock').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with rock against scissors and tallies win' do
    expect(game.result 'scissors', 'rock').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with scissors against lizard and tallies win' do
    expect(game.result 'lizard', 'scissors').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with scissors against paper and tallies win' do
    expect(game.result 'paper', 'scissors').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with Spock against rock and tallies win' do
    expect(game.result 'rock', 'Spock').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 2 beats player 1 with Spock against scissors and tallies win' do
    expect(game.result 'scissors', 'Spock').to eq game.player_2
    expect(game.player_1.wins).to eq 0
    expect(game.player_2.wins).to eq 1
  end

  scenario 'Player 1 reaches goal and wins the entire game' do
    game.result 'paper', 'rock'
    expect(game.winner).to eq game.player_1
  end

  scenario 'Player 2 reaches goal and wins the entire game' do
    game.result 'rock', 'paper'
    expect(game.winner).to eq game.player_2
  end

  scenario 'Neither player has yet won game' do
    game = Game.new Player, 2
    game.result 'paper', 'rock'
    expect(game.winner).to eq nil
  end

  scenario 'States if game has yet been won' do
    game.result 'paper', 'rock'
    expect(game.won?).to be true
  end

  scenario 'Can have CPU make random choice depending on rules (rps)' do
    cpu_choice = game.player_2.cpu_choice 'rps'
    rps = ['rock', 'paper', 'scissors']
    expect(rps).to include cpu_choice
  end

  scenario 'Can have CPU make random choice depending on rules (rpsls)' do
    cpu_choice = game.player_2.cpu_choice 'rpsls'
    rps = ['rock', 'paper', 'scissors', 'lizard', 'Spock']
    expect(rps).to include cpu_choice
  end

end