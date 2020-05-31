require 'comp_move'

describe CompMove do

  describe "#move" do
    it "returns either rock, paper or scissors" do
      expect(subject.move).to eq("rock").or eq("paper").or eq("scissors")
    end
  end

end
