require 'game'

describe Game do

  let(:computer) {double(:computer)}
  let(:player) {double(:player)}
  subject(:game) {described_class.new(player, computer)}

  before(:example) do
    allow(player).to receive(:name).and_return("Harry")
    allow(computer).to receive(:choice).and_return(:scissors)
    allow(computer).to receive(:name).and_return("Computer")
  end

  context '#evaluate_winner' do
    it 'can work out when Harry has won the game' do
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.evaluate_winner).to eq 'Harry'
    end

    it 'can work out when Computer has won the game' do
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.evaluate_winner).to eq 'Computer'
    end

    it 'can work out when noone has won the game' do
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.evaluate_winner).to eq 'Noone'
    end
  end
end
