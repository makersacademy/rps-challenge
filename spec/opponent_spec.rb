require 'opponent' 

describe Opponent do

  subject(:opponent)		{ described_class.new }

  describe '#choose' do

  	it 'chooses an option at random' do
  		expect(Opponent::CHOICES).to include(opponent.choose)
  	end

  end
	
end
