require 'game'

describe Game do 

	let(:game) { Game.new }
	let(:player) { double :player }
	let(:player_loser) {double :player, content: 'scissors' }
	let(:player_winner) {double :player, content: 'rock' }

	it 'should be able to add a player' do
		game.add(player)
		expect(game.player_count).to eq(1)
  end

  it 'should be able to add more than 2 player' do
  	expect{3.times {game.add(player)}}.to raise_error 'game already has 2 players!'
  end

  it 'should recognise a winner' do
  	game.add(player_loser)
  	game.add(player_winner)
  	expect(game.winner).to eq('player 2 wins!')
  end
	
end