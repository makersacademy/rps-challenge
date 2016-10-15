require 'game'

describe Game do
  subject(:game) {described_class.new}

  describe "#initialize" do
    it "is initialize with an array of choices" do
      expect(game.choice).to include("Rock")
    end
  end

#   describe "#rock" do
#     it "plays Rock against Rock" do
#       game.stub(:rand).and_return("Rock")
#       expect(game.rock).to eq "tie"
#     end
#     it "plays Paper against Rock" do
#       game.stub(:random).and_return("Paper")
#       expect(game.rock).to eq false
#     end
#     it "plays Scissors against Rock" do
#       game.stub(:random).and_return("Scissors")
#       expect(game.rock).to eq true
#     end
#
#   end
end
