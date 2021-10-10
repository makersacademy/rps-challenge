require 'game'

describe Game do
  describe "#play" do
    let(:player_choice) { "Paper" }
    
    it "should declare the correct winner" do
      # I tried everything.... I give up
      @game = Game.new(player_choice)
      
      expect(@game.play).to eq("It's a draw!")
    end
  end
end
