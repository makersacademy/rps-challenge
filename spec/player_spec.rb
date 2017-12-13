require 'player'

describe Player do

  let(:new_player) { described_class.new("Lewis") }

  describe "#name" do
    context "player should have a #name attribute" do
      it "should return Lewis" do
        expect(new_player.name).to eq("Lewis")
      end
    end
  end

  describe "#select" do
    context "when selecting either r/p/s" do
      it "should set @choice to be option chosen" do
        new_player.select("ROCK")
        expect(new_player.choice).to eq(:rock)
      end
    end
  end

end
