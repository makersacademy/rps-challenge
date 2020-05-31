require 'player'

describe Player do

  let(:john) { Player.new("john") }

  describe "#name" do
    it "Returns the name" do
      expect(john.name).to eq("john")
    end
  end

  describe "#play_rps" do
    it "Returns a winner" do
      allow_any_instance_of(CompMove).to receive(:move).and_return("scissors")
      john.play_rps("rock")
      expect(john.result).to eq("Congrats, your rock beat scissors!")
    end
  end
      
end
