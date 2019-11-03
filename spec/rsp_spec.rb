# describe "initialize"
# context 
# it 
# end 



# if player1 chooses rock && player 2 chooses paper 
# then player 2 wins the round 

# if player 2 has more points than player 1 
# then player 2 wins 

# total number of rounds 3

# let (subject) {Rockps.new}
describe "chooses Rock Paper Scissor" do

    it "expects Player 1 to choose rock & Player 2 chooses paper then player 2 wins the round" do 
        rps = Rockps.new(player1)

        expect(rps.choice).to eq("Rock")
    end 

end 
