require 'weapon'
require 'player'
require 'game'

describe Weapon do
  describe '#type' do
    it 'return type' do
      item = 'rock'
      weapon = Weapon.new(item)
      expect(weapon.type).to eq item
    end
  end

  describe '#outcome' do
    let(:player1) {Player.new('tom')}
    let(:player2) {Player.new('jill')}
    it 'return lost' do
      player1.weapon = 'rock'
      player2.weapon = 'paper'
      game = Game.new()
      game.add_player(player1,player2)
      weapon = Weapon.new(game.players[0].weapon)
      expect(weapon.outcome(game.players[1],game.rules)).to eq 'lost'
    end
    it 'return win' do
      player1.weapon = 'rock'
      player2.weapon = 'scissors'
      game = Game.new()
      game.add_player(player1,player2)
      weapon = Weapon.new(game.players[0].weapon)
      expect(weapon.outcome(game.players[1],game.rules)).to eq 'win'
    end
    it 'return draw' do
      player1.weapon = 'rock'
      player2.weapon = 'rock'
      game = Game.new()
      game.add_player(player1,player2)
      weapon = Weapon.new(game.players[0].weapon)
      expect(weapon.outcome(game.players[1],game.rules)).to eq 'draw'
    end
  end
end
