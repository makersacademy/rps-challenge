require 'game'

describe 'Game' do
	describe '#decide_winner' do
		it 'rock should beat scissors' do
			game = Game.new
			ai_choice = "scissors"
			player_choice = "rock"
			expect(game.decide_winner(ai_choice, player_choice)).to eq("win")
		end
	end
end