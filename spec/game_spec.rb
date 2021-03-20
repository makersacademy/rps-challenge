require 'game'

describe Game do
  describe "#self.newgame" do
    it "creates a class instance variable of Game" do
      Game.new_game("Gordon", "Caroline", 3)
      expect(Game.current_game).to be_a(Game)
    end
  end

  describe "#match" do
    let(:rpsls) { Game.new("Gordon", "Caroline", 5) }    
    let(:rps) { Game.new("Gordon", "Caroline", 3) } 

    it "determines the winner in a game of Rock Paper Scissors " do
      expect(rps.match(1, 2)).to eq(2)
    end
    it "returns true if the result of a game of rock paper scissors is a draw" do
      expect(rps.match(2, 2)).to eq(true)
    end
    it "determines the winner in a game of Rock Paper Scissors Lizard Spock" do
      expect(rpsls.match(2, 4)).to eq(2)
    end
  end
end
