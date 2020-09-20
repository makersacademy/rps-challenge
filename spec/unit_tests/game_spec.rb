require 'player'
require 'game'

describe Game do
  let(:name) {double("name")}
  let(:player_1) {Player.new(name)}
  subject(:game) {Game.new(player_1)}
  
  it 'stores the names of the player 1' do
    expect(game.player1).to eq name 
  end

  it 'default name of player 2 is Computer' do
    expect(game.player2).to eq 'Computer' 
  end

  describe '#create' do
    it 'creates a new instance of a game which can be accessed' do
      start_game = Game.create(player_1)
      expect(Game.instance).to eq start_game
    end

  end 
end