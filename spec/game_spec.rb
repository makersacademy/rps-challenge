require 'game'

describe Game do
  subject(:game){described_class.new(:rock)}

  describe '#result' do
    it "prints 'DRAW!' when computer and player selection match" do
      allow(game).to receive(:computer_selection) {:rock}
      expect(game.result).to eq("DRAW!")
    end

    it "prints 'YOU WIN!' when player beats computer" do
      allow(game).to receive(:computer_selection) { :scissors }
      expect(game.result).to eq("YOU WIN!")
    end

    it "prints 'YOU LOSE!' when computer beats player" do
      allow(game).to receive(:computer_selection) { :paper }
      expect(game.result).to eq("YOU LOSE!")
    end
  end

end
