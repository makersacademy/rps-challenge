require 'game'

describe Game do
  before do
    @player = double("player", move: "r")
    @game = Game.new(@player)
  end
  
  it "initialize a game with a player" do
    expect(@game).to have_attributes(player: @player)
  end

  it "play a game where player wins" do
    allow(@game).to receive(:rand_choice).and_return("s")
    expect(@game.play).to eq "It's a win!"
  end

  it "playing a game result in a draw" do
    allow(@game).to receive(:rand_choice).and_return("r")
    expect(@game.play).to eq "It's a draw!"
  end

  it "play a game where player lose" do
    allow(@game).to receive(:rand_choice).and_return("p")
    expect(@game.play).to eq "You lose!"
  end
end