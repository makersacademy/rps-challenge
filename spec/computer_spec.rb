require 'computer'

describe Computer do

  describe "computer chooses a weapon" do

    it "has chosen a weapon" do
      pc = double("pc")
      allow(pc).to receive(:weapons).and_return 'scissors'
      expect(pc.weapons("scissors")).to eq 'scissors'
    end

    it "has selected a choice" do
      pc = double("pc")
      allow(pc).to receive(:choice).and_return 'scissors'
      expect(pc.choice).to eq 'scissors'
    end

  end

end
