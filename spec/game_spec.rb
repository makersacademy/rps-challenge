require 'game'

describe Game do
  subject(:game) { described_class.new('Alaan', computer) }
  let(:computer) { double(:computer) }

  context "When a new game begins" do
    it "stores our user's name" do
      expect(game.player).to eq('Alaan')
    end

    it "stores our computer" do
      expect(game.computer).to eq(computer)
    end
  end

  describe "#selection" do
    context "when I select rock" do
      it "returns rock" do
        expect(game.selection(:rock)).to eq(:rock)
      end
    end

    context "when I select an invalid choice" do
      it "raises an error" do
        expect{game.selection(:invalid_choice)}.to raise_error 'Invalid choice'
      end
    end
  end

  describe "#result" do
    context "when I select rock" do
      it "lets me know if I have won or not" do
        game.selection(:rock)
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.result).to eq(:win)
      end
    end

    it "lets me know if we draw" do
      game.selection(:rock)
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq(:draw)
    end
  end



end
