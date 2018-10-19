require "router"

describe Router do
  let(:player_one) { double(:player_one, choose: true, :has_chosen? => false) }
  let(:player_two) { double(:player_two, choose: true, choose_random: true, :has_chosen? => false) }
  let(:game) { double(:game, player_one: player_one, player_two: player_two, mode: "Multiplayer") }
  let(:router) { Router.new(game) }

  context "when player one has chosen" do
    before { allow(player_one).to receive(:has_chosen?).and_return(true) }
    it "has player two choose the item" do
      expect(player_two).to receive(:choose).with(:rock)
      router.route(:rock)
    end

    it "returns /game" do
      expect(router.route(:rock)).to eq("/result")
    end
  end

  context "when player one has not chosen" do
    it "has player one choose the item" do
      expect(player_one).to receive(:choose).with(:rock)
      router.route(:rock)
    end

    it "returns /game in Multiplayer" do
      expect(router.route(:rock)).to eq "/game"
    end

    context "Single Player" do
      before { allow(game).to receive(:mode).and_return "Single Player" }

      it "has player two choose randomly" do
        expect(player_two).to receive(:choose_random)
        router.route(:rock)
      end

      it "returns /result" do
        expect(router.route(:rock)).to eq("/result")
      end
    end
  end
end
