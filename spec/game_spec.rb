require './lib/game'

describe Game do
  let(:player1) { double :Player, weapon: :rock, name: 'Mike' }
  let(:player2) { double :Player, weapon: :scissors, name: 'Paul' }
  let(:player3) { double :Player, weapon: :spock, name: 'John' }
  let(:player4) { double :Player, weapon: :lizard, name: 'Phillip' }
  subject(:game) { described_class.new(player1, player2) }
  let(:game2) { described_class.new(player3, player4) }

  it 'Contains two players' do
    expect(game.players).to eq [player1, player2]
  end

  context 'Win Conditions' do

    it 'returns player 1' do
      expect(game.result).to eq "#{player1.name} Won!"
    end

    it 'returns player 4' do
      expect(game2.result).to eq "#{player4.name} Won!"
    end
  end

end
