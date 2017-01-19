require './lib/player.rb'

describe Player do

subject(:player) {described_class.new("Louisa")}


  describe "#initializing" do
    context "with name" do
      it "should return player's name" do
      expect(player.name).to eq "Louisa"
    end
    end
  end

  describe "Choosing options" do
    context "Choosing Rock" do
      it "should update Choice to Rock" do
        player.choose_rock
        expect(player.choice).to eq "Rock"
      end

      it "should update Choice to Scissors" do
        player.choose_scissors
        expect(player.choice).to eq "Scissors"
      end

      it "should update Choice to Paper" do
        player.choose_paper
        expect(player.choice).to eq "Paper"
      end
    end
  end

end
