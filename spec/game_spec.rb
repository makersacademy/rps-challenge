require 'game'

describe Game do
 it "should accept user input of either rock paper scissors" do
    game = Game.new
    expect(game.selection).to eq("Rock")
 end
end