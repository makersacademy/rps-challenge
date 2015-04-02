require 'capybara/rspec'
require 'game'
require 'player'

feature 'Playing rock, paper scissors' do
  let(:player1) { Player.new "Bob" }
  let(:player2) { Player.new "John" }
  let(:game) { Game.new player1, player2 }

  scenario 'Rock beats scissors' do
    game.player1.chose :rock
    game.player2.chose :scissors
    game.play
    expect(game.player1.wins).to eq 1
  end

  scenario 'Scissors beats paper' do
    game.player1.chose :scissors
    game.player2.chose :paper
    game.play
    expect(game.player1.wins).to eq 1
  end

  scenario 'Paper beats rock' do
    game.player1.chose :paper
    game.player2.chose :rock
    game.play
    expect(game.player1.wins).to eq 1
  end

  scenario 'Paper and paper draws' do
    game.player1.chose :paper
    game.player2.chose :paper
    game.play
    expect(game.player1.draws).to eq 1
  end

  scenario 'Rock and rock draws' do
    game.player1.chose :rock
    game.player2.chose :rock
    game.play
    expect(game.player1.draws).to eq 1
  end

  scenario 'Scissors and scissors draws' do
    game.player1.chose :scissors
    game.player2.chose :scissors
    game.play
    expect(game.player1.draws).to eq 1
  end
end
