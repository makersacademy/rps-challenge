require 'game'

describe Game do 
  subject(:game) { described_class.new([player, cpu])}
  let(:player) { double :player, name: "Bob" }
  let(:cpu) { double :cpu, name: "CPU"}

  describe '#players' do
    it 'Returns an array of 2 players' do
      expect(game.players).to eq [player, cpu]
    end
  end

  describe '#result' do
    context 'CPU Picks Rock' do
      before do
        allow(cpu).to receive(:choice).and_return("Rock")
        allow(cpu).to receive(:cpu_hand).and_return("Rock")
        cpu.choice
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a draw. You both picked Rock.'
      end
    end

    context 'CPU Picks Paper' do
      before do
        allow(cpu).to receive(:choice).and_return("Paper")
        allow(cpu).to receive(:cpu_hand).and_return("Paper")
        cpu.choice
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a win for CPU! Paper beats Rock.'
      end
    end

    context 'CPU Picks Scissors' do
      before do
        allow(cpu).to receive(:choice).and_return("Scissors")
        allow(cpu).to receive(:cpu_hand).and_return("Scissors")
        cpu.choice
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a win for Bob! Rock beats Scissors.'
      end
    end

    context 'CPU Picks Spock' do
      before do
        allow(cpu).to receive(:choice).and_return("Spock")
        allow(cpu).to receive(:cpu_hand).and_return("Spock")
        cpu.choice
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a win for CPU! Spock beats Rock.'
      end
    end

    context 'CPU Picks Lizard' do
      before do
        allow(cpu).to receive(:choice).and_return("Lizard")
        allow(cpu).to receive(:cpu_hand).and_return("Lizard")
        cpu.choice
      end

      it 'Player picks Rock' do
        allow(player).to receive(:choice).and_return("Rock")
        expect(game.result).to eq 'a win for Bob! Rock beats Lizard.'
      end
    end
  end
end


