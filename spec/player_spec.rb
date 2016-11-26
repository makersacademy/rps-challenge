require "player"
describe Player do

  subject(:player) {described_class.new("John")}

  describe "Player attributes" do
    it "Player should have a name" do
      expect(player.name).to eq "John"
    end

    it "should start with a score of 0pts" do
      expect(player.score).to eq 0
    end
  end


end
