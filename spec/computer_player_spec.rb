require 'computer_player'

describe 'Computer Player' do
	describe 'basic functionality' do
		it 'should have an array of move types' do
			ai = Computer_player.new
			expect(ai.moves).to include("rock", "paper", "scissors")
		end
	end

	describe 'ai random move' do
		it 'returns either rock, paper or scissors' do
			ai = Computer_player.new
			expect(ai.attack).to eq("rock").or eq("paper").or eq("scissors")
		end
	end
end