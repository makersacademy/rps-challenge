require 'machine'

describe Machine do

  subject(:machine){ described_class.new }

  context '#choose' do
  	it 'chooses one of rock, paper, scissors, and the choice can be returned in capitals' do
      machine.choose
      expect(['ROCK','PAPER','SCISSORS']).to include machine.choice
  	end
  end

  context '#initialize' do
    it 'stores MACHINE as its name, which can be returned' do
      expect(machine.name).to eq 'THE MACHINE'
    end
    it 'is a machine' do
      expect(machine.is_a?(Machine)).to eq true
    end
  end

  context '#clear' do
    it 'clears the machine\'s choice' do
      machine.clear
      expect(machine.choice).to eq nil
    end
  end
  
end