require 'game'
require 'player'

describe Game do

  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1) { double :player, weapon: :scissors }
  let(:player_2) { double :player, weapon: :paper }
  it 'is initialized with two players' do
    expect(game.players.size).to eq 2
  end

  describe '#the_winner_is' do

    context 'there is a winner' do
      let(:player_1) { double :player, weapon: :stone }
      let(:player_2) { double :player, weapon: :paper }
      it 'knows when player 2 has won' do
        Game.new(player_1, player_2)
        expect(game.the_winner_is).to eq player_2
      end
    end

    context 'the game has been drawn' do
      let(:player_1) { double :player, weapon: :stone }
      let(:player_2) { double :player, weapon: :stone }
      it 'draws when both players choose the same weapon' do
        Game.new(player_1, player_2)
        expect(game.the_winner_is).to eq :draw
      end
    end

  end

  it 'winning_weapon method determines the winning weapon' do
    expect(game.winning_weapon(:paper, :scissors)). to eq :scissors
  end

  describe '#random_weapon' do
    it 'can select a random weapon' do
      expect(game.random_weapon).not_to be nil
    end
  end

end
