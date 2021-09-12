require "rps"
			
describe 'decide_winner' do
	it "identifies if there is a draw" do
		expect(decide_winner("paper", "paper")).to eq("It's a draw! What are the odds?")
	end

  it "identifies that the user wins" do
		expect(decide_winner("paper", "rock")).to eq("Congratulations, you win! Paper covers rock!")
	end

  it "identifies that the user loses" do
		expect(decide_winner("rock", "paper")).to eq("Better luck next time! Paper covers rock!")
	end

  it "identifies that the user did not select a move" do
		expect(decide_winner(nil, "paper")).to eq("You never win any games you don't play.<br>Mark Cuban.<br><br>Make sure you select a move next time!")
	end

end