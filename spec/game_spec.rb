require 'game'

describe Game do
  describe "#play" do
    let(:player_choice) { "Paper" }
    
    it "should declare the correct winner" do
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      @game = Game.new(player_choice)
      expect(@game.play).to eq("It's a draw!")
    end
  end
end

# I couldn't find a way of testing the class methods?
