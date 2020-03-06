require 'player'

  describe Player do
    
    subject(:sophia) { Player.new('Sophia') }
    
    describe "#name" do
      it "should return the player's name" do
        expect(sophia.name).to eq 'Sophia'
      end
    end

end