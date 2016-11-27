require  'spec_helper'
require './lib/game.rb'

describe Game do
  before do
    player1 = double("player1")
   end


  it "should let the computer pick an option" do
    game = Game.new("Bryony", @computers_option)
    allow(game).to receive(:computer_picks) {:Rock}
    expect(game.computer_picks).to eq :Rock
  end

  it "should return the right message if you win" do
    game = Game.new("Bryony", @computers_option)
    allow(game).to receive(:computers_option) {:Rock}
    expect(game.paper).to eq "You won!"
  end

  it "should return the right message if it's a draw" do
    game = Game.new("Bryony", @computers_option)
    allow(game).to receive(:computers_option) {:Rock}
    expect(game.rock).to eq "It's a draw"
  end

  it "should return the right message if the computer wins" do
    game = Game.new("Bryony", @computers_option)
    allow(game).to receive(:computers_option) {:Rock}
    expect(game.scissors).to eq "Oh no! The computer wins this time!"
  end
end
