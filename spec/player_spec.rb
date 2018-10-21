require 'player'

describe Player do
  let(:imtiyaz) { Player.new("Imtiyaz") }
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

  describe "#choose_random" do
    it "should choose a random move" do
      imtiyaz.choose_random
      expect(Player::MOVES).to include imtiyaz.move
    end
  end

  describe "#reset_move" do
    it "move should return nil" do
      imtiyaz.choose_random
      imtiyaz.reset_move
      expect(imtiyaz.move).to be_nil
    end
  end

  describe "#chose_rock?" do
    context "player chose rock" do
      it "should return true" do
        imtiyaz.choose_rock
        expect(imtiyaz.chose_rock?).to eq true
      end
    end

    context "player did not choose rock" do
      it "should return false" do
        imtiyaz.choose_paper
        expect(imtiyaz.chose_rock?).to eq false
      end
    end
  end

  describe "#chose_paper?" do
    context "player chose rock" do
      it "should return true" do
        imtiyaz.choose_paper
        expect(imtiyaz.chose_paper?).to eq true
      end
    end

    context "player did not choose paper" do
      it "should return false" do
        imtiyaz.choose_rock
        expect(imtiyaz.chose_paper?).to eq false
      end
    end
  end

  describe "#chose_scissors?" do
    context "player chose rock" do
      it "should return true" do
        imtiyaz.choose_scissors
        expect(imtiyaz.chose_scissors?).to eq true
      end
    end

    context "player did not choose scissors" do
      it "should return false" do
        imtiyaz.choose_rock
        expect(imtiyaz.chose_paper?).to eq false
      end
    end
  end
end
