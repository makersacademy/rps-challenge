require 'game'

describe Game do
	let(:player) { double(name: :player) }
	let(:opponent) { double(name: :opponent, choice: nil) }
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

	describe '#redirect?' do
		context 'when choice is nil' do
			it 'returns true' do
				allow(opponent).to receive(:is_a?).with(Player).and_return(true)
				expect(subject.redirect?).to eq true
			end
		end

		context 'when the oppponent has made a choice' do
			it 'returns false' do
				allow(opponent).to receive(:choice).and_return("rock")
				expect(subject.redirect?).to eq false
			end
		end
	end

	describe '#decide winner' do

		context 'when the player wins' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")
				allow(opponent).to receive(:choice).and_return("scissors")
				expect(subject.decide_winner).to eq "player wins!"
			end
		end
		context 'when the outcome is a draw' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")
				allow(opponent).to receive(:choice).and_return("rock")
				expect(subject.decide_winner).to eq "it's a draw."
			end
		end
		context 'when the player loses' do
			it 'notifies the player' do
				allow(player).to receive(:choice).and_return("rock")				
				allow(opponent).to receive(:choice).and_return("paper")
				expect(subject.decide_winner).to eq "opponent wins!"
			end
		end
	end
end