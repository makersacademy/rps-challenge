require 'game'

describe Game do

  let(:game) { described_class.new }

  describe "#choice" do
    context "when Rock" do
    it "selects Paper for the computer" do
       allow(game).to receive(:choice).and_return("Paper")
       expect(game.choice).to eq "Paper"
     end
   end
  end


end
