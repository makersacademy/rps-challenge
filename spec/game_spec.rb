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

	describe '#decide winner' do

		context 'when the player wins' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")
				allow(opponent).to receive(:choice).and_return("scissors")
				expect(subject.decide_winner).to eq "you win!"
			end
		end
		context 'when the outcome is a draw' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")
				allow(opponent).to receive(:choice).and_return("rock")
				expect(subject.decide_winner).to eq "its a draw."
			end
		end
		context 'when the player loses' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")				
				allow(opponent).to receive(:choice).and_return("paper")
				expect(subject.decide_winner).to eq "you lose!"
			end
		end
	end
end