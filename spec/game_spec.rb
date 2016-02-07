require 'game'

describe Game do

  let(:player1) {double :player, choice: :paper}
  let(:player2) {double :player, choice: :paper}
  let(:player3) {double :player, choice: :rock}

  subject(:game) {described_class.new(player1, player2)}

  it 'stores and returns player objects' do
    expect(game.player1).to eq player1
  end

  describe '#calculate_winner' do
    it 'returns draw when choices are equal' do
      game.calculate_winner
      expect(game.draw).to be true
    end

    let(:game2) {described_class.new(player1, player3)}

    it 'returns winner when choices are not equal' do
      game2.calculate_winner
      expect(game2.winner).to eq player1
    end

    it 'returns appropriate outcome messages' do
      game2.calculate_winner
      expect(game2.outcome).to eq "Paper wraps rock."
    end
  end
end
