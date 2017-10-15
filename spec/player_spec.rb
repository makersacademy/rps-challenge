require 'player'

describe Player do
  let(:player) { Player.new("name")}
  describe "::new" do
    it "instanciates a player with the name name" do
      expect(player.name).to eq "name"
    end
    it "instanciates a player with 0 win counts" do
      expect(player.win_counts).to eq 0
    end
  end

  describe "#chooses" do
    it "should convert choice to a symbol" do
      player.chooses("kakakia")
      expect(player.turn_choice).to eq :kakakia
    end
  end

  describe "#wins" do
    it "should increase win_counts by 1" do
      expect { player.wins }.to change { player.win_counts }.by(1) 
    end
  end
end
