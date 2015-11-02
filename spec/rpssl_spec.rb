require 'rpssl'

describe Rpssl do

subject(:rpssl) {described_class.new}

	describe '#winner' do
		it 'returns the winners move' do
			expect(rpssl.winner(:paper, :scissors)).to eq :scissors
		end
	end
end