require 'game'
require 'player'

describe "Features" do
  let(:game) {Game.new(Player)}
  let(:player) {Player.new}

  describe "Player" do
    # it 'has a name' do
    # end
  end

  describe "Game" do
    it 'creates player 1' do
      expect(game.player_1).to be game.player_1
    end
  end

  describe '#play' do
    it 'raises error if starting game before a player has decided on a hand to play' do
      allow(game.player_1).to receive(:chosen_hand?).and_return(false)
      allow(game.player_2).to receive(:chosen_hand?).and_return(true)
      expect { game.play }.to raise_error 'Player has not picked a hand to play!'
    end
    it 'checks if there is a tie' do
      game.player_1.choose_hand('rock')
      game.player_2.choose_hand('rock')
      game.player_1.name = 'Dan'
      expect(game.play).to eq "It's a tie!"
    end
    it 'lets player 1 beat player 2' do
      game.player_1.choose_hand('rock')
      game.player_2.choose_hand('scissors')
      game.player_1.name = 'Dan'
      expect(game.play).to eq "Dan wins!"
    end
    it 'lets player 2 beat player 1' do
      game.player_2.choose_hand('rock')
      game.player_1.choose_hand('scissors')
      game.player_2.name = 'Dan'
      expect(game.play).to eq "Dan wins!"
    end
  end

end
