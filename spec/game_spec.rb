require "game"
describe Game do
    describe "attribute reader" do 
        it "should reveal its attributes" do
            game = Game.new("james", "sarah")
                expect(game.player1).to eq("james")
                expect(game.player2).to eq("sarah")
        end
    end
    describe "#decide_winner" do
        it "should be able to determine a winner when passed game parameters as arguments" do
            james_double = double :player, name: "James"
            sarah_double = double :player, name: "Sarah"
            game = Game.new(james_double, sarah_double)
            expect(game.decide_winner("Rock", "Paper")).to eq("Sarah wins")
            expect(game.decide_winner("Scissors", "Paper")).to eq("James wins")
        end
    end
end


