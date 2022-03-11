require 'game'

describe Game do
  let(:player) { Player.new("Archie") }

  before do
    @game = Game.new(player)
  end

  context "player" do

    it "returns player when initializes" do
      expect(@game.player.name).to eq "Archie"
    end 

  end 

  # context "play" do

#     it "" do
#       allow_any_instance_of(Game).to receive(:play).and_return("paper")
#     end 
#   end
end
