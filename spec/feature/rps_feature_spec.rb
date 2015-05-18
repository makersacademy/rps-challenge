require 'capybara/rspec'
require 'game'
require 'player'

feature 'Playing rock, paper scissors' do
  let(:player1) { Player.new "Bob" }
  let(:player2) { Player.new "John" }
  let(:game) { Game.new player1, player2 }

  scenario 'Rock beats scissors' do
    game.player1.choose :rock
    game.player2.choose :scissors
    expect(game.play).to eq "Bob Wins!"
  end

  scenario 'Scissors beats paper' do
    game.player1.choose :paper
    game.player2.choose :scissors
    expect(game.play).to eq "John Wins!"
  end

  scenario 'Paper beats rock' do
    game.player1.choose :paper
    game.player2.choose :rock
    expect(game.play).to eq "Bob Wins!"
  end

  scenario 'Spock beats scissors' do
    game.player1.choose :scissors
    game.player2.choose :spock
    expect(game.play).to eq "John Wins!"
  end

  scenario 'Rock beats lizard' do
    game.player1.choose :rock
    game.player2.choose :lizard
    expect(game.play).to eq "Bob Wins!"
  end

  scenario 'Lizard beats spock' do
    game.player1.choose :spock
    game.player2.choose :lizard
    expect(game.play).to eq "John Wins!"
  end

  scenario 'Paper beats spock' do
    game.player1.choose :paper
    game.player2.choose :spock
    expect(game.play).to eq "Bob Wins!"
  end

  scenario 'Spock beats rock' do
    game.player1.choose :rock
    game.player2.choose :spock
    expect(game.play).to eq "John Wins!"
  end

  scenario 'Scissors beats lizard' do
    game.player1.choose :scissors
    game.player2.choose :lizard
    expect(game.play).to eq "Bob Wins!"
  end

  scenario 'Lizard beats paper' do
    game.player1.choose :paper
    game.player2.choose :lizard
    expect(game.play).to eq "John Wins!"
  end

  scenario 'Paper and paper draws' do
    game.player1.choose :paper
    game.player2.choose :paper
    expect(game.play).to eq "Draw!"
  end

  scenario 'Rock and rock draws' do
    game.player1.choose :rock
    game.player2.choose :rock
    expect(game.play).to eq "Draw!"
  end

  scenario 'Scissors and scissors draws' do
    game.player1.choose :scissors
    game.player2.choose :scissors
    expect(game.play).to eq "Draw!"
  end

  scenario 'Spock and spock draws' do
    game.player1.choose :spock
    game.player2.choose :spock
    expect(game.play).to eq "Draw!"
  end

  scenario 'Lizard and lizard draws' do
    game.player1.choose :lizard
    game.player2.choose :lizard
    expect(game.play).to eq "Draw!"
  end
end
