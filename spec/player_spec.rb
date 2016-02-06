require 'player'

describe Player do

  subject(:player1){described_class.new "Iryna"}

  describe "#name" do
    it "return Player's name" do
      expect(player1.name).to eq "Iryna"
    end
  end

end