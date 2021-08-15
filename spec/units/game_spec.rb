require './lib/game.rb'
player1 = double(:player)
player2 = double(:player)
allow(player1).to receive(:name).and_return("Super Hans")
allow(player2).to recieve(:name).and_return("Darth Vader")

describe Game do
  it 'checks a new game can be created with a determined move for player 1' do
    subject = Game.new(:player1, "Rock", :player2)
    expect(subject.player1_move).to eq "Rock"
  end

  it 'checks a new game can be created with two player moves' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader", "Paper")
    expect(subject.player2_move).to eq "Paper"
  end

  it 'checks that player two will be assigned a random move if no argument is given' do
    subject = Game.new("Super Hans", "Rock")
    expect(subject.player2_move).to eq("Rock").or eq("Paper").or eq("Scissors").or eq("Spock").or eq("Lizard")
  end

  it 'checks the game is able to return a draw' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader", "Rock")
    expect(subject.winner).to eq "It's a draw!"
  end
    
  it 'checks that rock beats scissors' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader",  "Scissors")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that scissors loses to rock' do
    subject = Game.new("Super Hans", "Scissors", "Darth Vader", "Rock")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that rock beats lizard' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader", "Lizard")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that lizard loses to rock' do
    subject = Game.new("Super Hans", "Lizard", "Darth Vader", "Rock")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that scissors beats lizard' do
    subject = Game.new("Super Hans", "Scissors", "Darth Vader", "Lizard")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that lizard loses to scissors' do
    subject = Game.new("Super Hans", "Lizard", "Darth Vader", "Scissors")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that scissors beats paper' do
    subject = Game.new("Super Hans", "Scissors", "Darth Vader", "Paper")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that paper loses to scissors' do
    subject = Game.new("Super Hans", "Paper", "Darth Vader", "Scissors")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that lizard beats paper' do
    subject = Game.new("Super Hans", "Lizard", "Darth Vader", "Paper")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that paper loses to lizard' do
    subject = Game.new("Super Hans", "Paper", "Darth Vader", "Lizard")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that lizard beats Spock' do
    subject = Game.new("Super Hans", "Lizard", "Darth Vader", "Spock")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that Spock loses to lizard' do
    subject = Game.new("Super Hans", "Spock", "Darth Vader", "Lizard")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that paper beats Spock' do
    subject = Game.new("Super Hans", "Paper", "Darth Vader", "Spock")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that Spock loses to paper' do
    subject = Game.new("Super Hans", "Spock", "Darth Vader", "Paper")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that paper beats rock' do
    subject = Game.new("Super Hans", "Paper", "Darth Vader", "Rock")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that rock loses to paper' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader", "Paper")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that Spock beats rock' do
    subject = Game.new("Super Hans", "Spock", "Darth Vader", "Rock")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that rock loses to Spock' do
    subject = Game.new("Super Hans", "Rock", "Darth Vader", "Spock")
    expect(subject.winner).to eq "Darth Vader wins!"
  end

  it 'checks that Spock beats scissors' do
    subject = Game.new("Super Hans", "Spock", "Darth Vader", "Scissors")
    expect(subject.winner).to eq "Super Hans wins!"
  end

  it 'checks that scissors loses to Spock' do
    subject = Game.new("Super Hans", "Scissors", "Darth Vader", "Spock")
    expect(subject.winner).to eq "Darth Vader wins!"
  end
end
