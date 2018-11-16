require 'game'

describe 'Game' do
	describe '#decide_winner' do
		it 'rock should beat scissors' do
			game = Game.new
			ai_choice = "scissors"
			player_choice = "rock"
			expect(game.decide_winner(player_choice, ai_choice)).to eq("win")
		end

		it 'paper should beat rock' do
			game = Game.new
			ai_choice = "rock"
			player_choice = "paper"
			expect(game.decide_winner(player_choice, ai_choice)).to eq("win")
		end

		it 'scissors should beat paper' do
			game = Game.new
			ai_choice = "paper"
			player_choice = "scissors"
			expect(game.decide_winner(player_choice, ai_choice)).to eq("win")
		end
	end
end