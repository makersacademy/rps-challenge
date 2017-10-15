require 'artificial_player'

describe ArtificialPlayer do
  let(:a_player) { ArtificialPlayer.new }
  describe "::new" do
    it "initialises a bot with the name S1llyb0t" do
      expect(a_player.name).to eq "S1llyb0t"
    end
    it "should have a win_counts" do
      expect(a_player.win_counts).to eq 0
    end
  end

  describe "#chooses" do
    it "should return a value of the Array CHOICES" do
      srand(10)
      a_player.chooses
      expect(a_player.turn_choice).to eq :paper
    end
  end


end
