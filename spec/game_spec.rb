require 'game'

describe Game do

  it "creates a computer_choice" do
    game = Game.new("rock")
    expect(game).to respond_to(:computer_choice)

  end

  it "enables a player to enter choice" do
    game = Game.new("rock")
    expect(game).to respond_to(:player_choice)

  end

  it "tells you if the game is a draw" do
    game = Game.new('scissors')
    allow(game).to receive(:computer_choice) {'scissors'}
    expect(game.play).to eql('It was a draw')
  end

  it "tells you if the computer has won" do
    game = Game.new("paper")
    allow(game).to receive(:computer_choice) {'scissors'}
    expect(game.play).to eql("The computer won")
  end

  it "tells you if you have won" do
    game = Game.new("rock")
    allow(game).to receive(:computer_choice) {'scissors'}
    expect(game.play).to eql("You won")
  end

  it "tells you if the game is a draw" do
    game = Game.new('rock')
    allow(game).to receive(:computer_choice) {'rock'}
    expect(game.play).to eql('It was a draw')
  end

  it "tells you if the computer has won" do
    game = Game.new("paper")
    allow(game).to receive(:computer_choice) {'rock'}
    expect(game.play).to eql("You won")
  end

  it "tells you if the computer has won" do
    game = Game.new("scissors")
    allow(game).to receive(:computer_choice) {'rock'}
    expect(game.play).to eql("The computer won")
  end

  it "tells you if the game is a draw" do
    game = Game.new('paper')
    allow(game).to receive(:computer_choice) {'paper'}
    expect(game.play).to eql('It was a draw')
  end

  it "tells you if the computer has won" do
    game = Game.new("scissors")
    allow(game).to receive(:computer_choice) {'paper'}
    expect(game.play).to eql("You won")
  end

  it "tells you if the computer has won" do
    game = Game.new("rock")
    allow(game).to receive(:computer_choice) {'paper'}
    expect(game.play).to eql("The computer won")
  end

end
