require 'vsplayer'

describe Vsplayer do

	subject(:vsplayer){described_class.new(['ed' , 'rock'])}
	it'return waiting for player when only one played' do
		expect(vsplayer.result).to eq 'Waiting for player 2...'
	end


	it 'calculate the result' do
		subject = Vsplayer.new(['ed' , 'Rock','jose' , 'Rock'])
   		expect(subject.result).to eq 'this is a Draw!'
  	end
  	it 'calculate the result' do
		subject = Vsplayer.new(['ed' , 'Paper','jose' , 'Rock'])
   		expect(subject.result).to eq 'ed wins!'
  	end
  	it 'calculate the result' do
		subject = Vsplayer.new(['ed' , 'Scissors','jose' , 'Rock'])
   		expect(subject.result).to eq 'jose wins!'
  	end

  	it 'display the game' do 
  		subject = Vsplayer.new(['ed' , 'Rock','jose' , 'Rock'])
		expect(subject.display).to eq 'ed => Rock VS jose => Rock'
	end

  	

end

