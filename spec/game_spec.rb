require 'game'

describe Game do
  subject(:game) {described_class.new("Ben")}
  let(:ben) {double :player}
  let(:dave) {double :player}

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

end
