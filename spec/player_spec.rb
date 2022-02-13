require "player"

describe Player do
  subject(:frankie) { Player.new("Frankie", "rock") }

  describe "#name" do
    it "should return the marketeer's name" do
      expect(frankie.name).to eq "Frankie"
    end
  end

  describe "#move" do
    it "should store the marketeer's move" do
      expect(frankie.move).to eq "rock"
    end
  end
end
