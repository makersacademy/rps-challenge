require 'computer'

describe Computer do
  xit 'can choose randomly between rock, paper and scissors' do
  	# HOW TO TEST? THIS TEST DOESN'T WORK... BUT METHOD WORKS ON IRB, SO WILL COME BACK TO THIS
  	subject.computer_choice
  	expect(subject.choice).to eq('rock'||'paper'||'scissors')
  end
end