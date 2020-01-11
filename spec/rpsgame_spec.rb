require 'rpsgame'

describe RPSGame do

  describe '#play' do
     it 'determines whether there has been a tie' do
       expect(subject.play('Paper', 'Paper')).to eq "Hmm. It's a tie this time"
     end

     it 'determines whether player_1 has won' do
       expect(subject.play('Scissors', 'Paper')).to eq "Congratulations! You beat Lucy the Computer!!!"
     end

     it 'detemrines whether lucy_the_computer has won' do
       expect(subject.play('Scissors', 'Rock')).to eq "Bad luck! You were beaten this time"
     end
   end


end 