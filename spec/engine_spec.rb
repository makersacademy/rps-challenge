require 'engine'

describe Engine do

	subject(:engine) { described_class.new }

	describe '#run' do
		it 'rock beats scissors (player 1 wins)' do
			expect(engine.run('rock','scissors')).to eq 1
		end

		it 'paper beats rock (player 2 wins)' do
			expect(engine.run('rock', 'paper')).to eq 2
		end


		it 'scissors beats paper (player 1 wins)' do
			expect(engine.run('scissors', 'paper')).to eq 1
		end
	end

end
