require 'computer'

describe Computer do 
  describe '.move' do 
    it 'should return rock, paper or scissors as a symbol' do 
      expect(subject.move).to be_a Symbol
    end 

    it 'should return either rock, paper or scissors' do 
      expect([:rock, :paper, :scissors].include? subject.move).to eq(true)
    end 
end 
end 