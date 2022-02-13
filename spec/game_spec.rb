require './lib/game'
require './lib/player'
require './lib/weapon'

describe Game do

  describe 'add players' do
    it 'expects to respond to receive two arguments' do
      expect(subject).to respond_to(:add).with(2).argument
    end
  end

  describe 'play the game' do
    player1 = Player.new('Player_1')  
    player2 = Player.new('Player_2') 
    player1.add_weapon(Weapon.new('rock'))
    player2.add_weapon(Weapon.new('scissors')) 
    game = Game.new
    game.add(player1, player2)
    it 'expects shirley to win' do
      expect(game.play_game).to eq 'You won! CONGRATULATIONS' 
    end
  end
  
end
