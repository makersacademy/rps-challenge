require 'game'
require 'player'

describe Game do

  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1) { double :player, weapon: :paper }
  let(:player_2) { double :player, weapon: :scissors }

  it 'is initialized with two players' do
    expect(game.players.size).to eq 2
  end

  # Test for self.instance method too??

  # Test for self.create method (OR CHANGE THIS ANYWAY?)

  describe '#the_winner_is' do
    it 'knows who has won a game' do
      expect(game.the_winner_is).to eq player_2
    end

    it 'knows when a game has been drawn' do
      player3 = double :player, weapon: :paper
      player4 = double :player, weapon: :paper
      game = Game.new(player3, player4)
      expect(game.the_winner_is).to eq :draw
    end
  end

  it 'winning_weapon method determines the winning weapon' do
    expect(game.winning_weapon(:paper, :scissors)). to eq :scissors
  end

end
