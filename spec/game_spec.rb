require 'game'

describe Game do

  let(:double_computer_choice){double(:computer_choice, choice: 'scissors')}


  it "creates a computer_choice" do
  game = Game.new("rock")
  expect(game).to respond_to(:computer_choice)

  end

  it "enables a player to enter choice" do
  game = Game.new("rock")
  expect(game).to respond_to(:player_choice)

  end

  it "tells you if the game is a draw" do
  game = Game.new("scissors")
  allow(game).to receive(:computer_choice) {'scissors'}
  expect(game.play).to eql("It was a draw")
  end

  it "tells you if the computer has won" do
  game = Game.new("paper")
  allow(game).to receive(:computer_choice) {'scissors'}
  expect(game.play).to eql("The computer won")
  end

end
