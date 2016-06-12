require 'log'
require 'player'
require 'game'

describe Log do

subject(:log) { described_class.new(player)}

let(:player) {Player.new("Hodor")}

 	describe '#log' do
		it 'is a hash' do
			expect(log.log).to respond_to :each
		end
	end


	describe '#history_log' do
		it 'starts with an empty hash' do
			expect(log.history_log).to eq ([])
		end
	end


	describe '#history_log' do
		it 'adds to history log after move' do
			log.add(player, 'rock')
			expect(log.history_log).to eq ([{"Hodor" => 'rock'}])
		end
	end


	describe '#ties' do
		it 'increases when no one wins' do
			expect{log.tie}.to change{log.ties}.from(0).to(1)
		end
	end







		# it 'keeps score' do
		# 	player.choose('rock')
		# 	expect(score.log).to eq ({'Hodor' => 1, 'Ties' => 0, 'Computer' => 0})
		# end

end
