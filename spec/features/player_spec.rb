require 'player'

describe Player do 
	let(:dan) {double :name, capitalize: 'Dan'}
	subject(:player) {described_class.new(dan)}
	moves = [:rock, :paper, :scissors, :spock, :lizard]
	let(:paper) {double :move, to_s: :paper}

	describe '#initialise' do
		it 'assigns the name to the player' do
			expect(player.name).to eq "Dan"
		end
		it 'assigns nil to #move' do
			expect(player.move).to eq nil
		end
	end

	describe '#log' do
		it 'logs a players chosen move' do
			player.log(paper)
			expect(player.move).to eq paper
		end
	end

	describe '#win' do
		it 'increases a players score' do
			player.win
			expect(player.score).to eq 1
		end
	end
end
