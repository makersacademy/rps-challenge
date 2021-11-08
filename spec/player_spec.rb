require 'player'
require 'computer'
require 'game'

describe 'Player' do
  subject(:player_1) { Player.new('Player 1') }
  let(:computer) { :computer }
  let(:game) { Game.new(player_1, computer) }
  let(:param) { { Rock: 'Rock' } }

  describe '#name' do
    it 'should return a name' do
      expect(player_1.name).to eq 'Player 1'
    end
  end

  #this is not a good test... need to learn more about mocking and doubles
  describe '#input' do
    it 'should return a move' do
      game.player_input(param)
      expect(game.player_move).to eq 'Rock'
    end
  end
end
