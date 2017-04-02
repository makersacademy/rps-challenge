require 'game'

describe Game do
subject(:game) { described_class.new(player, computer) }
let(:player) { double :player, name: "dave" }
let(:computer) { double :computer, name: "hal_9000" }

  describe '#player1' do
    it "retrieves the first player's name" do
      expect(player.name).to eq("dave")
    end
  end

  describe '#player2' do
    it "retrieves the second player's name" do
      expect(computer.name).to eq("hal_9000")
    end
  end

  describe '#win?' do
    context 'when player is Rock' do
      before do
        allow(player).to receive(:choice).and_return("Rock")
      end

      it 'Player 1 is winner if computer is Scissors' do
        allow(computer).to receive(:choice).and_return("Scissors")
        expect(game.win?).to eq true
      end
    end
  end

end

# it 'instructs a plane to take off' do
#     airport.land(plane)
#     expect(plane).to receive(:take_off)
#     airport.take_off(plane)
#   end
