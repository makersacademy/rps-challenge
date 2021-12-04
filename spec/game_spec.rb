require 'game'

describe Game do
  before do
    @player = double
    @game = Game.new(@player)
  end
  
  it "initialize a game with a player" do
    expect(@game).to have_attributes(player: @player)
  end
end