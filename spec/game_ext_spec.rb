require 'game_ext'

describe Game_ext do 
  subject(:game) { described_class.new([player, cpu])}
  let(:player) { double :player, name: "Bob" }
  let(:cpu) { double :cpu, name: "CPU"}

  describe '#result' do
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

    context 'CPU Picks Paper' do
      before do
        allow(cpu).to receive(:choice).and_return("Paper")
        allow(cpu).to receive(:cpu_hand).and_return("Paper")
        cpu.choice
      end

      it 'Player picks Spock' do
        allow(player).to receive(:choice).and_return("Spock")
        expect(game.result).to eq 'a win for CPU! Paper beats Spock.'
      end
    end
  end
end


