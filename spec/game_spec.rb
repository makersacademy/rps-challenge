require 'game'

describe Game do

  let(:game) { described_class.new("Rock") }

  describe "#choice" do
    context "when Rock" do
      it "selects Paper for the computer" do
        allow(game.weapons).to receive(:sample).and_return("Paper")
        expect(game.choice).to eq "Paper"
      end
    end
  end

  context "when game ends with a draw" do
    describe "#draw?" do
      it "returns true if player shape is rock and computer shape is rock" do
        expect(game.draw?("Rock")).to eq true
      end
    end
  end

  context "when game ends with a winning user" do
    describe "#result?" do
      it "returns true if player shape is rock and computer shape is scissors" do
        expect(game.result("Scissors")).to eq true
      end
    end
  end

   context "when game ends with a winning computer" do
     describe "#result?" do
       it "returns false if player shape is rock and computer shape is paper" do
         expect(game.result("Paper")).to eq false
       end
     end
   end
end
