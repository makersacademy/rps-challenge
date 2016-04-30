require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) {  spy(:player, name: 'Omar') }
  let(:player_2) {  spy(:player, name: 'Laura') }

  describe 'Initialization:' do
    it 'Retrieves the first player' do
      expect(game.player_1).to eq player_1
    end

    it 'Retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '.create' do
  	it 'creates a new game' do
  		expect(Game.create(player_1, player_2)).to be_a Game
  	end
  end

  describe '.instance' do
  	it 'returns the created game' do
  		instance = Game.create(player_1, player_2)
  		expect(Game.instance).to eq instance
  	end
  end
end