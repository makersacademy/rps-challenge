require 'player'

describe Player do

	let(:player) { Player.new }
	let(:rps)    { double :rps}

	it 'should have an rps object' do
		player.add(rps)
		expect(player.has_rps_object?).to eq(true)
	end

	it 'should be able to choose paper' do
		expect(rps).to receive(:change_to_paper)
		player.add(rps)
		player.choose_paper
	end

	it 'should be able to choose scissors' do
		expect(rps).to receive(:change_to_scissors)
		player.add(rps)
		player.choose_scissors
	end

end