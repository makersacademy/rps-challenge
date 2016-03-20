require 'game'

describe Game do
  let(:player) { double :Player, name: "Name" }
  subject(:game) { described_class.new player }

  describe '#attack' do
    it '>should return random attack when called' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      expect(game.attack).to eq("Rock")
    end
  end

  describe '#outcome' do
    context '> player wins' do
      it '>should return win' do
        allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
        game.attack
        allow(player).to receive(:last_move?).and_return("Rock")
        expect(game.outcome).to eq(:win)
      end
    end

    context '> player loses' do
      it '>should return lose' do
        allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
        game.attack
        allow(player).to receive(:last_move?).and_return("Paper")
        expect(game.outcome).to eq(:lose)
      end
    end

    context '> player draws' do
      it '>should return draw' do
        allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
        game.attack
        allow(player).to receive(:last_move?).and_return("Scissors")
        expect(game.outcome).to eq(:draw)
      end
    end
  end
end
