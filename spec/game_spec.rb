require 'game'

describe Game do
  subject(:game) { Game.new(player, console) }
  let(:player) { double(:player) }
  let(:console) { double(:console) }

   it 'returns player' do
     expect(game.player).to eq player
   end

   it 'returns console' do
     expect(game.console).to eq console
   end

 # describe '#winner' do
 #    it 'console wins' do
 #      allow(console).to receive(:move).and_return('Rock')
 #      allow(player).to receive(:move).and_return('Paper')
 #      expect(game.winner).to eq 'Console wins'
 #    end
 #
 #    it' is a draw'
 #        allow(console).to receive(:console_choice).and_return('Scissors')
 #        allow(player).to receive(:move).and_return('Scissors')
 #        expect(game.winner).to eq 'Draw'
 #    end
 #
 #    it 'player wins'
 #      allow(console).to receive(:console_choice).and_return('Scissors')
 #      allow(player).to receive(:move).and_return('Rock')
 #      expect(game.winner).to eq 'You win'
end
