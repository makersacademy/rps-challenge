require 'game'

describe Game do

	let(:game){Game.new}
	let(:player){double :player, name: 'Diego', pick: 'rock'}
	let(:computer){double :computer, pick: 'scissors'}

	it 'should have a player' do
		expect(player.name).to eq 'Diego'
	end

	it 'should show the options' do
		expect(game.options).to eq ['scissors', 'paper', 'rock']
	end

	it 'should have a winner' do
		expect(game.winner(player.pick, computer.pick)).to eq 'Player wins!'
	end

end