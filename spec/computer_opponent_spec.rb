require 'computer_opponent'

RSpec.describe Computer_Opponent do 

  describe 'class initialization' do 

    it 'instance has array to store possible moves' do 
      expected = ['rock', 'paper', 'scissors']
      expect(subject.moves).to eq expected
    end 

  end 

end
