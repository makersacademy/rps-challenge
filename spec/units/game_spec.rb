require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player, "Rock")}
  let(:game) {double(:game)}
  let(:player) {double(:player)}

  describe '#result' do
    it 'method for comparing moves' do
      player_move = "Scissors"
      allow(game).to receive(:check_winner).and_return("Computer wins")
    end
  end

end
