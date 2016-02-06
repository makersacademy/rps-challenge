require 'game'

describe Game do 
  subject(:game) { described_class.new(player)}
  let(:player) { double :player }

  describe '#players' do
    it 'Returns the Player' do
      expect(game.players).to eq player
    end
  end

  describe '#pick_cpu_hand & #cpu_hand' do
    it 'Returns one of three hands' do
      game.pick_cpu_hand
      expect(["Rock", "Paper", "Scissors"]).to include(game.cpu_hand)
    end
  end

  describe '#result' do
    context 'CPU Picks Rock' do
      before do
        allow(game).to receive(:pick_cpu_hand).and_return("Rock")
        allow(game).to receive(:cpu_hand).and_return("Rock")
        game.pick_cpu_hand
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a Draw. You both picked Rock.'
      end
      it 'Player picks Paper' do
        allow(player).to receive(:choice).and_return("Paper")
        expect(game.result).to eq 'a Win! Paper beats Rock.'
      end

      it 'Player picks Scissors' do
        allow(player).to receive(:choice).and_return("Scissors")
        expect(game.result).to eq 'a Loss! Rock beats Scissors.'
      end
    end

    context 'CPU Picks Paper' do
      before do
        allow(game).to receive(:pick_cpu_hand).and_return("Paper")
        allow(game).to receive(:cpu_hand).and_return("Paper")
        game.pick_cpu_hand
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a Loss! Paper beats Rock.'
      end

      it 'Player picks Paper' do
        allow(player).to receive(:choice).and_return("Paper")
        expect(game.result).to eq 'a Draw. You both picked Paper.'
      end

      it 'Player picks Scissors' do
        allow(player).to receive(:choice).and_return("Scissors")
        expect(game.result).to eq 'a Win! Scissors beats Paper.'
      end
    end

    context 'CPU Picks Scissors' do
      before do
        allow(game).to receive(:pick_cpu_hand).and_return("Scissors")
        allow(game).to receive(:cpu_hand).and_return("Scissors")
        game.pick_cpu_hand
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a Win! Rock beats Scissors.'
      end

      it 'Player picks Paper' do
        allow(player).to receive(:choice).and_return("Paper")
        expect(game.result).to eq 'a Loss! Scissors beats Paper.'
      end

      it 'Player picks Scissors' do
        allow(player).to receive(:choice).and_return("Scissors")
        expect(game.result).to eq 'a Draw. You both picked Scissors.'
      end
    end
  end
end


