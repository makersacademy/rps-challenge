require 'player'

describe Player do 
  describe '.set_name' do 
    it 'should set the name instance variable to whatever its given' do
      subject.set_name("Rooney")
      expect(subject.name).to eq("Rooney")
    end 
  end 

  context '.name' do 
    it 'should hold the players name as a string' do 
      subject.set_name("Tevez")
      expect(subject.name).to be_a String
    end 
  end 

  describe '.set_move' do 
    it 'should return one of RPS as a symbol' do
      expect(subject.set_move('rock')).to eq(:rock)
    end 
    it 'should raise an error if trying to enter anything but RPS' do
      expect { subject.set_move('cows') }.to raise_error("Please select a valid option")
    end 
  end
end
