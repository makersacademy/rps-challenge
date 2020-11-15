require_relative '../lib/game'




# return 'Draw!' if @player_choice == @computer_choice
# 'Computer won!'

describe "Rock, Paper, Scissors Rules" do
  it "will return 'Player_name won!' if player's choice: 'scissors' && computer_choice: 'paper'" do
    game1 = Game.new('scissors', 'paper', 'John')
    expect(game1.rps).to eq('John won!')
  end

  it "will return 'Player_name won!' if player's choice: 'paper' && computer_choice: 'rock'" do
    game2 = Game.new('paper', 'rock', 'Peter')
    expect(game2.rps).to eq('Peter won!')
  end

  it "will return 'Player_name won!' if player's choice: 'rock' && computer_choice: 'scissors'" do
    game3 = Game.new('rock', 'scissors', 'James')
    expect(game3.rps).to eq('James won!')
  end

  it "will return 'Draw!' if player's choice equals computer's choice" do
    game4 = Game.new('paper', 'paper', 'Anna')
    expect(game4.rps).to eq('Draw!')
  end

end

# initialize(player_choice, computer_choice, player_name)
