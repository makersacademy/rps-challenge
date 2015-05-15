require 'computer'

describe Computer do
  xit 'can choose randomly between rock, paper and scissors' do
  	# HOW TO TEST? THIS DOESN'T WORK
  	subject.computer_choice
  	expect(subject.choice).to eq('rock'||'paper'||'scissors')
  end

  xit 'cannot choose anything other than rock, paper or scissors'
end