require_relative '../lib/game'

describe "Rock, Paper, Scissors Rules" do
  it "will return 'Player_name won!' if player's choice: 'scissors' && computer_choice: 'paper'" do
    game1 = Game.new('scissors', 'paper', 'John')
    expect(game1.rpssl).to eq('John won!')
  end

  it "will return 'Player_name won!' if player's choice: 'paper' && computer_choice: 'rock'" do
    game2 = Game.new('paper', 'rock', 'Peter')
    expect(game2.rpssl).to eq('Peter won!')
  end

  it "will return 'Player_name won!' if player's choice: 'rock' && computer_choice: 'scissors'" do
    game3 = Game.new('rock', 'scissors', 'James')
    expect(game3.rpssl).to eq('James won!')
  end

  it "will return 'Player_name won!' if player's choice: 'spock' && computer_choice: 'scissors'" do
    game4 = Game.new('spock', 'scissors', 'Emily')
    expect(game4.rpssl).to eq('Emily won!')
  end

  it "will return 'Player_name won!' if player's choice: 'spock' && computer_choice: 'rock'" do
    game4 = Game.new('spock', 'rock', 'Logan')
    expect(game4.rpssl).to eq('Logan won!')
  end

  it "will return 'Player_name won!' if player's choice: 'lizard' && computer_choice: 'spock'" do
    game5 = Game.new('lizard', 'spock', 'Thomas')
    expect(game5.rpssl).to eq('Thomas won!')
  end

  it "will return 'Player_name won!' if player's choice: 'lizard' && computer_choice: 'paper'" do
    game6 = Game.new('lizard', 'paper', 'Aiden')
    expect(game6.rpssl).to eq('Aiden won!')
  end

  it "will return 'Draw!' if player's choice equals computer's choice" do
    game7 = Game.new('paper', 'paper', 'Anna')
    expect(game7.rpssl).to eq('Draw!')
  end

end
