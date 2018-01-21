require './lib/game'

describe Game do
  let(:player1) { double :Player , weapon: :rock}
  let(:player2) { double :Player , weapon: :scissors}
  let(:player3) { double :Player , weapon: :spock}
  let(:player4) { double :Player , weapon: :lizard}
  subject(:game) {described_class.new(player1, player2)}
  let(:game2) {described_class.new(player3, player4)}

  it 'Contains two players' do
    expect(game.players).to eq [player1, player2]
  end

  context 'Win Conditions' do

    it 'returns player 1' do
      expect(game.result).to eq "#{player1} Won!"
    end

    # it 'returns player 4' do
    #   expect(game2.result).to eq "#{player4} Won!"
    # end
  end

end
