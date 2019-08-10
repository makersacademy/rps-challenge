require 'game'

describe Game do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  context "players" do

    subject {Game.new(player_1, player_2)}

    describe "#player1" do
      it "gets the first player" do
        expect(subject.player1).to eq player_1
      end
    end

    describe "#player2" do
      it "gets the second player" do
        expect(subject.player2).to eq player_2
      end
    end
    
  end
end