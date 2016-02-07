require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:computer) {double :computer, :move => :Paper}

  describe "#rules" do
    it "initializes the game with a set of rules" do
      expect(game.rules).to be_a (Hash)
    end
  end

  describe "#play_a_round" do
    it { is_expected.to respond_to(:play_a_round).with(2).arguments }

    it "plays a round" do
      expect(game.play_a_round(:Rock, computer.move)).to eq(:Paper)
    end
  end

end