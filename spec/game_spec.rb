require 'game'

describe Game do
	let(:player) { double(name: :player) }
	let(:opponent) { double(name: :opponent) }
	subject { described_class.new(player,opponent) }

	describe '#player' do
		it 'returns the games player' do		
			expect(subject.player).to eq player
		end 
	end

	describe '#opponent' do
		it 'returns the games opponent' do
			expect(subject.opponent).to eq opponent
		end
	end

	describe '#self.create' do
		it 'creates an instance of a game' do
			described_class.create(player,opponent)
			expect(described_class.instance).to be_a(Game)
		end
	end
end