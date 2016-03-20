require 'game'

describe Game do 

	subject(:game) { described_class.new player}
	let(:player) { double :player }
	let(:game_class) { described_class }


	describe '#initialize' do
		it 'has the player' do
			expect(game.player).to eq player
		end
	end

	describe '.create' do
		it 'creates new instance of Game' do
			expect(game_class.create player).to be_instance_of(Game)
		end
	end

	describe '.load' do
		it 'returns instance of Game' do
			game_class.create player
			expect(game_class.load).to be_instance_of(Game)
		end
	end

	describe '#show_winner' do
		context 'Both did same move' do
			it 'shows a draw' do
				expect(game.winner 'Rock', 'Rock').to eq 'Draw!'
			end
		end
		context 'Player has won' do
			it 'Player has Rock, PC has Scissors' do
				expect(game.winner "Rock", "Scissors").to eq game.player
			end
			it 'Player has Paper, PC has Rock' do
				expect(game.winner "Paper", "Rock").to eq game.player
			end
			it 'Player has Scissors, PC has Paper' do
				expect(game.winner "Scissors", "Paper").to eq game.player
			end
		end
		context 'PC has won' do
			it 'PC has Rock, Player has Scissors' do
				expect(game.winner "Scissors", "Rock").to eq "Computer"
			end
			it 'PC has Paper, Player has Rock' do
				expect(game.winner "Rock", "Paper").to eq "Computer"
			end
			it 'PC has Scissors, Player has Paper' do
				expect(game.winner "Paper", "Scissors").to eq "Computer"
			end
		end
	end
end