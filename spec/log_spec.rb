require 'log'
require 'player'
require 'game'

describe Log do

subject(:log) { described_class.new}

let(:player) { double(:player, name: :player) }
let(:move) { double(:move) }


 	describe '#scores' do
		it 'is a hash' do
			expect(log.scores).to respond_to :each
		end
	end


	describe '#history' do
		it 'starts with an empty array' do
			expect(log.history).to eq ([])
		end
	end


	describe '#ties' do
		it 'increases when no one wins' do
			expect{log.add_tie}.to change{log.ties}.from(0).to(1)
		end
	end

	describe '#update_history' do
		it 'adds hash with player and move' do
			log.update_history(player, move)
			expect(log.history).to eq ([{:player => move}])
		end
	end

	describe '#add_win' do
		it 'adds player scores to scores hash' do
			log.add_win(player)
			expect(log.scores).to eq ({:player => 1})
		end

		it 'updates scores hash' do
			log.add_win(player)
			log.add_win(player)
			expect(log.scores).to eq ({:player => 2})
		end

	end









end
