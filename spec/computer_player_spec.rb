require 'computer_player'

describe ComputerPlayer do
	
	subject(:computer) {described_class.new}

	describe '#name' do
		it 'returns computer' do
			expect(computer.name).to eq "Computer"
		end
	end

	describe '#points' do
		it 'returns starting points of 0' do
			expect(computer.points).to eq 0
		end	
	end

	describe '#add_points' do
		it 'changes computers points by Game::POINT_INCREMENT' do
			expect{computer.add_points}.to change{computer.points}.by(Game::POINT_INCREMENT)
		end
	end

end