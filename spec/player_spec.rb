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

end
