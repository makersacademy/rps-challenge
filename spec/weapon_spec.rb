require "weapon"

describe Weapon do

  describe "New weapon - Rock" do
    let(:weapon) { Weapon.new.rock}

    it "returns 'Rock'" do
      expect(weapon).to eq "Rock"
  end
end

  describe "New weapon - Paper" do
    let(:weapon) { Weapon.new.paper}

    it "returns 'Paper'" do
      expect(weapon).to eq "Paper"
    end
  end

  describe "New weapon - Scissors" do
    let(:weapon) { Weapon.new.scissors}

    it "returns 'Scissors'" do
      expect(weapon).to eq "Scissors"
    end
  end

  describe "New weapon - Random" do
    let(:weapon) { Weapon.new.random_choice}

    it "returns 'Rock', 'Paper' or 'Scissors'" do
      expect(weapon).to eq("Rock") | eq("Paper") | eq("Scissors")
    end
  end

end
