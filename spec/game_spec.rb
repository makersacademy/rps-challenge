require 'game'

describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}
  subject(:game) {described_class.new(player1)}

  describe "#defaults" do

      it {is_expected.to respond_to(:player)}

      it "initializes with an array containing three available choices" do
        expect(game.choices.length).to eq 3
      end

      it "contains the options, rock, paper, scissors" do
        expect(game.choices).to include "Rock", "Paper", "Scissors"
      end
  end

  describe "#.create" do
    it "initializes an instance of game and saves it to @game" do
      expect(self.game).to be_an_instance_of Game
    end
  end

  describe "#random_choice" do
    it "returns a choice from @choices" do
      expect(["Paper", "Rock", "Scissors"]).to include game.random_choice
    end
  end
  #
  # describe "result" do
  #   context "when the game is a tie" do
  #     it "confirms that the game is a tie" do
  #       allow(player1).to receive(:set_choice)
  #       game.player.set_choice("Rock")
  #       game.opponent.set_choice("Rock")
  #       expect(game.result).to eq "It's a tie!"
  #     end
  #   end
  # end
end
