require 'player'

describe Player do 
  let(:toby) { Player.new("Toby") }

  describe "#name" do 
    it "returns the name" do 
      expect(toby.name).to eq "Toby"
    end
  end 
end
