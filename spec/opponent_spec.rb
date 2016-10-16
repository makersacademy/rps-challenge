require 'opponent'

describe Opponent do
	describe '#choice' do
		context 'when first initialized' do
			it 'equals nil' do
				expect(subject.choice).to eq nil
			end
		end
	end

	describe '#name' do
		it 'returns opponent' do
			expect(subject.name).to eq 'Opponent'
		end
	end

	describe '#choose' do
		it 'updates the opponents choice variable' do
			subject.choose
			expect(subject.choice).not_to eq nil
		end
	end
end