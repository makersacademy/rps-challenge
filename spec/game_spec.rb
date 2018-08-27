require './lib/game.rb'
describe Game do

  subject(:game) {described_class.new("Rock")}

  describe '#decision' do
    it 'should show a players decision' do
      expect(game.decision).to eq "Rock"
    end
  end

  describe '#cpu' do
    it 'should show CPUs play' do
      allow(game).to receive(:cpu_weapon).and_return("Scissors")
      expect(game.cpu_weapon).to eq "Scissors"
    end
  end

  describe '#result_message' do
    it 'should declare a winner' do
      allow(game).to receive(:cpu_weapon).and_return("Rock")
      expect(game.result_message).to eq "IT WAS A DRAW"
    end
  end
end
