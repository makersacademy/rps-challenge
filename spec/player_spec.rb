require 'player'

describe Player do
  subject(:lucy) {Player.new('Lucy')}

  describe "#name" do
    it "returns player name" do
      expect(lucy.name).to eq 'Lucy'
    end
  end

  describe "#points" do
    it "shows how many points the player has won" do
      expect(lucy.points).to eq 0
    end

    describe "#choice" do
      it "can choose rocks" do
        subject.choice("rocks")
        expect(subject.hand_selection).to eq "rocks"
      end

      it "can choose paper" do
        subject.choice("paper")
        expect(subject.hand_selection).to eq "paper"
      end

      it "can choose scissors" do
        subject.choice("scissors")
        expect(subject.hand_selection).to eq "scissors"
      end

    end



  end

end
