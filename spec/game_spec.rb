require 'game'
require 'player'

describe Game do
  subject(:game) {Game.new(double(:player),double(:player))}
  it 'Can be an instance of game' do
    expect(game).to be_instance_of Game
  end

  context 'Players' do

    let(:player1) {double(:player, name: "Bradley", computer: false)}
    let(:player2) {double(:player, name: "Computer", computer: true)}

    subject(:game) {Game.new(player1,player2)}

    it 'Player 1 can be player 1' do
      expect(game.player1).to eq player1
    end

    it 'Player 2 can be player 2' do
      expect(game.player2).to eq player2
    end
  end

  context 'Player1 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Rock")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Scissors")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Rock, Player2 - Scissors' do
      expect(game.check_winner(player1,player2)).to eq "Bradley wins"
    end
  end

  context 'Player1 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Paper")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Rock")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Paper, Player2 - Rock' do
      expect(game.check_winner(player1,player2)).to eq "Bradley wins"
    end
  end

  context 'Player 1 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Scissors")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Paper")}

    subject(:game) {Game.new(player1,player2)}
    
    it 'Player1 - Scissors, Player2 - Paper' do
      expect(game.check_winner(player1,player2)).to eq "Bradley wins"
    end
  end

  context 'Player2 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Scissors")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Rock")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Scissors, Player2 - Rock' do
      expect(game.check_winner(player1,player2)).to eq "Computer wins"
    end
  end

  context 'Player2 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Rock")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Paper")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Rock, Player2 - Paper' do
      expect(game.check_winner(player1,player2)).to eq "Computer wins"
    end
  end

  context 'Player 2 can win game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Paper")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Scissors")}

    subject(:game) {Game.new(player1,player2)}
    
    it 'Player1 - Paper, Player2 - Scissors' do
      expect(game.check_winner(player1,player2)).to eq "Computer wins"
    end
  end

  context 'Can draw the game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Rock")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Rock")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Rock, Player2 - Rock' do
      expect(game.check_winner(player1,player2)).to eq "Draw"
    end
  end

  context 'Can draw the game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Paper")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Paper")}

    subject(:game) {Game.new(player1,player2)}

    it 'Player1 - Paper, Player2 - Paper' do
      expect(game.check_winner(player1,player2)).to eq "Draw"
    end
  end

  context 'Can draw the game' do
    let(:player1) {double(:player, name: "Bradley", computer: false, move: "Scissors")}
    let(:player2) {double(:player, name: "Computer", computer: true, move: "Scissors")}

    subject(:game) {Game.new(player1,player2)}
    
    it 'Player1 - Scissors, Player2 - Scissors' do
      expect(game.check_winner(player1,player2)).to eq "Draw"
    end
  end
end
    