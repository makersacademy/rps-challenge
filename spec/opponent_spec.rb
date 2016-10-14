require 'opponent'

describe Opponent do
	describe '#choice' do
		context 'when first initialized' do
			it 'equals nil' do
				expect(subject.choice).to eq nil
			end
		end
	end

	describe '#choose' do
		it 'updates the opponents choice variable' do
			subject.choose
			expect(subject.choice).not_to eq nil
		end
	end
end