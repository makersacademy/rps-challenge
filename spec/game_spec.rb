require 'game'

describe Game do

  let(:computer) {double(:computer)}
  let(:player) {double(:player)}
  subject(:game) {described_class.new(player, computer)}

  before(:example) do
    allow(player).to receive(:choice).and_return(:rock)
    allow(player).to receive(:name).and_return("Harry")
    allow(computer).to receive(:choice).and_return(:scissors)
  end

  context '#evaluate_winner' do
    it 'can work out who has won the game' do
      expect(game.evaluate_winner).to eq 'Harry'
    end
  end
end
