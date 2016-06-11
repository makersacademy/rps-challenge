require 'computer'

describe Computer do

  describe '#computer_input' do
	  it 'returns rock' do
      subject.stub(:computer_input).and_return(:rock)
      expect(subject.computer_input).to eq :rock
	   end

     it 'returns paper' do
       subject.stub(:computer_input).and_return(:paper)
       expect(subject.computer_input).to eq :paper
 	   end

     it 'returns scissor' do
       subject.stub(:computer_input).and_return(:scissor)
       expect(subject.computer_input).to eq :scissor
 	   end
   end
 end
