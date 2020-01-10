require 'game'

describe Game do
  let(:player){double :player, :score => 1 }
  let(:player2){double :player2, :score => 0}
  subject(:game){described_class.new(player, player2)}

  describe "#return_player" do
    it "returns a player" do
      expect(game.return_player(1)).to eq player
    end
  end

  

  # describe "#choice" do
  #   context "game start" do
  #     it "returns good luck at start of game" do
  #       expect(game.choice).to eq "Good Luck!"
  #     end
  #   end
  #
  #   context "player clicks rock" do
  #     xit 'returns rock' do
  #
  #     end
  #
  #     xit 'updates the score' do
  #
  #     end
  #   end
  # end
end
