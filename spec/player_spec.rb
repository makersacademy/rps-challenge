require 'player'
describe Player do

  context "I would like to register my name before playing an online game" do

    let(:player) { Player.new("Ed") }

    it "checks player has name" do
      expect(player.name).to eq "Ed"
    end

  end

end