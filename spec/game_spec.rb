require 'game'

describe Game do

  it "selects a random weapon" do
    expect(["Rock", "Paper", "Scissors","Spock", "Lizard"]).to include(subject.random_weapon)
  end

  describe "Checks outcome and returns winning weapon" do

    it "Rock beats Scissors" do
      expect(subject.check("Rock", "Scissors")).to eq("Rock")
    end

    it "Paper beats Rock" do
      expect(subject.check("Rock", "Paper")).to eq("Paper")
    end

    it "Scissors beats Paper" do
      expect(subject.check("Scissors", "Paper")).to eq("Scissors")
    end

    it "Draws if weapons are equal" do
      expect(subject.check("Rock", "Rock")).to eq("DRAW!")
    end

  end

end
