require 'game'

describe Game do
  let(:player){double :player, name: "Asia"}
  subject{Game.new(player)}
  
  describe "rock_paper_scissors" do
    it "lets the game choose one at random" do
      srand(4)
      expect(subject.rock_paper_scissors).to eq "Scissors"
    end
  end
end