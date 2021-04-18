require "engine"

describe Engine do
  context "#initialize" do
    it "should have a basic amount on points - 0" do
      expect(subject.points).to eq ::BASE_POINTS
    end

    it "should have a name - MATRIX" do
        expect(subject.name).to eq "MATRIX"
      end
  end

  context "#auto_move" do
    it "should be able to make a random move" do
        subject.auto_move
        expect(['rock', 'paper', 'scissors']).to include(subject.rmove)
    end
  end
end
