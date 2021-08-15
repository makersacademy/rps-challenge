require_relative "../../lib/computer"

describe Computer do
  describe "#choose" do
    it "should be able to make choice of rock, paper or scissors" do
      expect(["Rock", "Paper", "Scissors"].include?(subject.choose)).to eq(true)
    end
  end
end