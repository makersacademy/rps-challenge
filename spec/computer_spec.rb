require './lib/computer'

describe Computer do

  subject(:pc) { Computer.new }

  describe "#choice" do

    it "returns a sample from the array" do
      rock = "rock"
      Array.any_instance.stub(:sample) {rock}
      expect(pc.choice).to be rock
    end
  end

end
