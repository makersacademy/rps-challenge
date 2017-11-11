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

end
