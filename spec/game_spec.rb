require 'game'

describe Game do
  let(:player) { double :Player, name: "Name" }
  let(:player_2) { double :Player, name: "Name 2" }
  subject(:game) { described_class.new player, player_2 }

  describe '#attack' do
    it '>should return random attack when called' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      expect(game.attack).to eq("Rock")
    end
  end

  describe '#player_2_attack' do
    it '>should return the player 2 last attack' do
      expect(player_2).to receive(:last_move?)
      game.player_2_attack
    end
  end

  context '> Single Player' do
    describe '#outcome' do
      before do
        allow(subject).to receive(:single_player?).and_return(true)
      end
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

  context '>Multi-Player' do
    context '> player 1 wins' do
      it '>should return win' do
        allow(player_2).to receive(:last_move?).and_return("Scissors")
        allow(player).to receive(:last_move?).and_return("Rock")
        expect(game.outcome).to eq(:win)
      end
    end
  end
end
