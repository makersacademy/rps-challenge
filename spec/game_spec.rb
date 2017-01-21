require 'game'

describe Game do
	
  subject(:game)		{described_class.new("Player 1", "Player 2") }

  describe '#player_1' do
  	it 'returns player 1' do
  		expect(game.player_1).to eq 'Player 1'
  	end
  end

  describe '#player_2' do
  	it 'returns player 2' do
  		expect(game.player_2).to eq 'Player 2'
  	end
  end

end