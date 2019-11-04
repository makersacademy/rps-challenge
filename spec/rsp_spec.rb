
require 'game'
# if player1 chooses rock && player 2 chooses paper 
# then player 2 wins the round 

# if player 2 has more points than player 1 
# then player 2 wins 

# total number of rounds 3

# let (subject) {Rockps.new}
# subject(:dave) { Player.new('Dave') }

describe "chooses Rock Paper Scissor" do

    it "expects Player 1 to choose rock & Player 2 chooses paper then player 2 wins the round" do 
        game = Game.new

        expect(game.choice).to eq("Rock")
    end 

end 

describe "rps_condition" do
    it "checks if player1 won" do 

    end 
end 


