require './lib/game.rb'
describe Game do

  subject(:game) { described_class.new(decision) }
  let(:decision) { double(:decision)             }

  describe '#decision' do
    it 'should show a players decision' do
      expect(game.decision).to eq decision
    end
  end

  describe '#cpu' do
    it 'should show CPUs play' do
      allow(game).to receive(:cpu).and_return("Rock")
      expect(game.cpu).to eq "Rock"
    end
  end

  describe '#result_message' do
    it 'should declare the winner' do
      allow(game).to receive(:cpu).and_return("Rock")
      expect(game.result_message).to eq "IT WAS A DRAW"
    end
  end

end
