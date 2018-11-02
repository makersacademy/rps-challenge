require 'game'

describe Game do

  it "human should win with paper v rock" do
    new_game = Game.new('paper', 'rock')
    expect(new_game.decider).to eq("YOU HAVE WON!")
  end

end
