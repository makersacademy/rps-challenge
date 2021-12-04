require 'game'

describe Game do
  before do
    @player = double("player", move: "rock")
    @game = Game.new(@player)
  end
  
  it "initialize a game with a player" do
    expect(@game).to have_attributes(player: @player)
  end

  it "play a game where player wins" do
    allow(@game).to receive(:rand_choice).and_return("scissors")
    expect(@game.play).to eq "You win!"
  end

  it "playing a game result in a draw" do
    allow(@game).to receive(:rand_choice).and_return("rock")
    expect(@game.play).to eq "You draw!"
  end

  it "play a game where player lose" do
    allow(@game).to receive(:rand_choice).and_return("paper")
    expect(@game.play).to eq "You lose!"
  end
end