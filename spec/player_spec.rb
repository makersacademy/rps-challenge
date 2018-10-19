require 'player'

describe Player do
  let(:imtiyaz) { Player.new("Imtiyaz")}
  it "should return the name of the player" do
    expect(imtiyaz.name).to eq "Imtiyaz"
  end

  describe "#choose_rock" do
    it "should return player's move as rock" do
      imtiyaz.choose_rock
      expect(imtiyaz.move).to eq "Rock"
    end
  end

  describe "#choose_paper" do
    it "should return player's move as paper" do
      imtiyaz.choose_paper
      expect(imtiyaz.move).to eq "Paper"
    end
  end

  describe "#choose_scissors" do
    it "should return player's move as scissors" do
      imtiyaz.choose_scissors
      expect(imtiyaz.move).to eq "Scissors"
    end
  end
end
