require 'player'

	describe Player do
	  subject(:nandini) {Player.new 'Nandini'}

	  describe '#name' do
	    it 'prints name at beginning' do
	      expect(subject.name).to eq 'Nandini'
	    end
	  end
	end
