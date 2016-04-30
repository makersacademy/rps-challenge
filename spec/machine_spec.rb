require 'machine'

describe Machine do

  subject(:machine){ described_class.new }

  context '#choose' do
  	it 'chooses one of rock, paper, scissors, and the choice can be returned in capitals' do
      machine.choose
      expect(['ROCK','PAPER','SCISSORS']).to include machine.choice
  	end
  end
  
end