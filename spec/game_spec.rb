require 'game'

describe Game do
    before :each do
    @game = Game.new
    end

 it "should accept user input of either rock paper scissors" do
    @game.selection("Rock")
    expect(@game.selection("Rock")).to eq("Rock")
 end
end