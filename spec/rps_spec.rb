require 'rpsclass'

describe Rps  do
	it 'can play' do
		expect(subject).to respond_to :play
	end

	it 'can play a shape of your choice' do
		expect(subject).to respond_to(:play).with(1).argument
	end

	it 'only allows plays of Rock, Paper, or Scissors' do
		expect{subject.play(:banana)}.to raise_error 'Please play Rock, Paper, or Scissors.'
	end

	it 'can tie' do
		subject.play(:rock)
		# subject.computer_choice = :rock
		expect(subject.result).to eq "It's a tie! Try again!"
	end

	it 'can lose' do
		subject.play(:scissors)
		expect(subject.result).to eq "Bummer! You lose! Try Again!"
	end
end