require 'computer_player'

describe 'Computer Player' do
	describe 'basic functionality' do
		it 'should have an array of move types' do
			ai = Computer_player.new
			expect(ai.moves).to include("rock", "paper", "scissors")
		end
	end
end