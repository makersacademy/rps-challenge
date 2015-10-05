require 'game'

describe Game do

  subject { Game.new('rock') }
    it { is_expected.to respond_to(:computer_choice) }

    subject { Game.new('rock') }
      it { is_expected.to respond_to(:player_choice) }

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
