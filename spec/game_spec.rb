require 'game'

describe Game do

  let(:player_double) { double:player }
  let(:player_class_double) { double :player_class }
  let(:ai_double) { double:ai }
  let(:ai_class_double) { double :ai_class, new: ai_double }
  let(:winner_double) { double :winner, who_wins: player_double }
  subject(:game) { Game.new(player_class_double, ai_class_double) }

  describe '#create_player' do
    it 'creates a new instance of player and saves it as an instance variable' do
      allow(player_class_double).to receive(:new).with('Mama').and_return(player_double)
      game.create_player('Mama')
      expect(game.player).to eq(player_double)
    end
  end

  describe '#initialize' do
    it 'games starts with with a computer oppenent by default' do
      expect(game.player2).to eq(ai_double)
    end
  end

  describe '#winner_is' do
    it 'calls winner with player 1 and 2' do
      expect(game.winner_is(winner_double)).to eq(player_double)
    end
  end
end
