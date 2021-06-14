require 'game'

RSpec.describe Game do
 	  let(:player_1) { double(:player_1, name: 'Fabio') }
	  subject(:game) { Game.new(player_1) }

 	  it 'can take one player as an argument' do

		   expect(subject.player_1).to be(player_1)
	  end

	  it 'returns a random RSP move' do
	    	expect(subject.robot).to eq('rock').or eq('paper').or eq('scissors')
	  end

	  it 'returns the player as the winner of the match' do
		   allow(subject).to receive(:robot) { "paper" }
		   allow(subject).to receive(:move) { "scissors" }

		   expect(subject.hand).to eq('Fabio has won!')
	  end

	  it 'returns the player as the loser of the match' do
		   allow(subject).to receive(:robot) { "paper" }
		   allow(subject).to receive(:move) { "rock" }

		   expect(subject.hand).to eq('Fabio has lost!')
	  end

	  it 'gives a draw when both choose the same move' do
	    	allow(subject).to receive(:robot) { "paper" }
		    allow(subject).to receive(:move) { "paper" }

		    expect(subject.hand).to eq("This hand was a draw! Try again.")
	  end
end
