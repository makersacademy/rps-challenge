require 'player'

describe Player do
	subject { described_class.new(:name) }
	describe '#name' do
		it 'returns the players name' do
			expect(subject.name).to eq :name
		end
	end

	describe '#choice' do
		context 'when first initialized' do
			it 'equals nil' do
				expect(subject.choice).to eq nil
			end
		end
	end
end