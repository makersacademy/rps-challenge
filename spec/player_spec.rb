require 'player'

describe Player do
  subject(:mike) { Player.new('Mike') }

  describe '#name' do
    it "returns the name" do
      expect(mike.name).to eq 'Mike'
    end
  end

  describe '#result' do
    it "has options for the computer to randomly choose from" do
      expect(mike.hand_shape_choices).to include(:rock, :paper, :scissors)
    end

    it "picks a random hand shape for the computer" do
      allow(mike).to receive(:result).and_return("scissors")
      expect(mike.result).to eq "scissors"
    end
  end

end
