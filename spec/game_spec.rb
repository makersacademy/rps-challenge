require 'game'

describe Game do

	let(:player) { double :player }
	let(:computer) { double :computer }
	subject(:game) { Game.new(player, computer) }
	subject(:game2) { Game.new(:Rock, :Scissors) }
	subject(:game3) { Game.new(:Scissors, :Scissors) }
	subject(:game4) { Game.new(:Paper, :Scissors) }

	describe '#initialize' do
		it 'returns the symbol chosen by player' do
		  expect(game.player).to eq player
		end

		it 'returns the symbol chosen by computer' do
		  expect(game.computer).to eq computer
		end
	end

	describe '#winner' do
		it 'returns the winner' do
		  expect(game2.winner).to eq "Human wins!"
		end
	end

	describe '#winner' do
		it 'returns the winner' do
		  expect(game3.winner).to eq "It's a draw"
		end
	end
	describe '#winner' do
		it 'returns the winner' do
		  expect(game4.winner).to eq "Computer wins!"
		end
	end
end