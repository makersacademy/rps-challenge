require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  subject(:game) { described_class.new(player, computer) }

  describe ".instance" do
    it "returns an instance of Game" do
      expect(described_class.instance(player, computer)).to be_an_instance_of(Game)
    end
  end
  describe "#initialize" do
    it "round initialises to 0" do
      expect(game.round).to eq(0)
    end
  end
  describe "#play" do
    it "winner is stored" do
      allow(game).to receive(:determine_winner).and_return(player)
      allow(player).to receive(:increment_score)
      game.play
      expect(game.winner).to be player
    end
    it "adds 1 point to the winner" do
      allow(game).to receive(:determine_winner).and_return(player)
      expect(player).to receive(:increment_score)
      game.play
    end
    it "increments the round" do
      allow(game).to receive(:determine_winner).and_return(player)
      allow(player).to receive(:increment_score)
      expect { game.play }.to change { game.round }.by(1)
    end
  end
  describe "#reset" do
    it "calls player reset method" do
      allow(computer).to receive(:reset)
      expect(player).to receive(:reset)
      game.reset
    end
    it "calls computer reset method" do
      allow(player).to receive(:reset)
      expect(computer).to receive(:reset)
      game.reset
    end
    it "resets round count" do
      allow(game).to receive(:determine_winner).and_return(player)
      allow(player).to receive(:increment_score)
      allow(player).to receive(:reset)
      allow(computer).to receive(:reset)
      game.play
      expect { game.reset }.to change { game.round }.by(-1)
    end
  end
end
