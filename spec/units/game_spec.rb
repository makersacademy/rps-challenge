require './lib/game.rb'

describe Game do
  it 'checks a new game can be created with a determined move for player 1' do
    subject = Game.new("Rock")
    expect(subject.player1_move).to eq "Rock"
  end

  it 'checks a new game can be created with two player moves' do
    subject = Game.new("Rock", "Paper")
    expect(subject.player2_move).to eq "Paper"
  end

  it 'checks that player two will be assigned a random move if no argument is given' do
    subject = Game.new("Rock")
    expect(subject.player2_move).to eq("Rock").or eq("Paper").or eq("Scissors").or eq("Spock").or eq("Lizard")
  end

  it 'checks the game is able to return a draw' do
    subject = Game.new("Rock", "Rock")
    expect(subject.winner).to eq "Draw"
  end
    
  it 'checks that rock beats scissors' do
    subject = Game.new("Rock", "Scissors")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that scissors loses to rock' do
    subject = Game.new("Scissors", "Rock")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that rock beats lizard' do
    subject = Game.new("Rock", "Lizard")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that lizard loses to rock' do
    subject = Game.new("Lizard", "Rock")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that scissors beats lizard' do
    subject = Game.new("Scissors", "Lizard")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that lizard loses to scissors' do
    subject = Game.new("Lizard", "Scissors")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that scissors beats paper' do
    subject = Game.new("Scissors", "Paper")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that paper loses to scissors' do
    subject = Game.new("Paper", "Scissors")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that lizard beats paper' do
    subject = Game.new("Lizard", "Paper")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that paper loses to lizard' do
    subject = Game.new("Paper", "Lizard")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that lizard beats Spock' do
    subject = Game.new("Lizard", "Spock")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that Spock loses to lizard' do
    subject = Game.new("Spock", "Lizard")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that paper beats Spock' do
    subject = Game.new("Paper", "Spock")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that Spock loses to paper' do
    subject = Game.new("Spock", "Paper")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that paper beats rock' do
    subject = Game.new("Paper", "Rock")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that rock loses to paper' do
    subject = Game.new("Rock", "Paper")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that Spock beats rock' do
    subject = Game.new("Spock", "Rock")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that rock loses to Spock' do
    subject = Game.new("Rock", "Spock")
    expect(subject.winner).to eq "Player 2"
  end

  it 'checks that Spock beats scissors' do
    subject = Game.new("Spock", "Scissors")
    expect(subject.winner).to eq "Player 1"
  end

  it 'checks that scissors loses to Spock' do
    subject = Game.new("Scissors", "Spock")
    expect(subject.winner).to eq "Player 2"
  end
end
