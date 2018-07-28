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
      allow(game).to receive(:cpu).and_return("rock")
      expect(game.cpu).to eq "rock"
    end
  end

end
