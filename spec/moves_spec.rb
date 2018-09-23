require 'moves'

	describe Moves do
	  describe 'random move' do
	    it 'returns a random move of Rock/Paper/Scissors' do
	      expect(["Rock", "Paper", "Scissors"]).to include(subject.comp_move)
	    end
	  end

	end
