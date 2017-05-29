require 'game'

describe Game do
  let(:opponent) { double(:opponent, :name => 'computer opponent') }
  let(:player) { double(:player, :name => 'Lubos') }
  subject(:game) { described_class.new(player, opponent) }

  it 'should have two entrants when initialized' do
    expect(game.players.length).to eq 2
  end

  describe '#declare_winner' do
    it 'should declare Rock winner' do
      allow(opponent).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.declare_winner).to eq 'computer opponent'
    end
  end
end
