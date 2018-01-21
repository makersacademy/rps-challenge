require './lib/game'

describe Game do
  let(:player1) { double :Player }
  let(:player2) { double :Player }
  subject(:game) {described_class.new(player1, player2)}

  it 'Contains two players' do
    expect(game.players).to eq [player1, player2]
  end

  context 'Win Conditions' do

    it 'returns player 1' do
      player1.weapon = :rock
      player2.weapon = :scissors
      expect(game.results).to eq player1
    end
  end

  # context 'Lose Conditions' do
  #
  #   it 'returns player 1' do
  #     player1.weapon = :spock
  #     player2.weapon = :lizard
  #     expect(game.results).to eq player2
  #   end
  # end

end
