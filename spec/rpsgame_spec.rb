require 'rpsgame'

describe RPSGame do

   let(:subject) { described_class.new(player_1) } # di the game has a player instance
   let(:player_1) { double (:player_1) } # if we inject an object, we need a double for it in our tests 
   

  describe '#play' do
     it 'determines whether there has been a tie' do
       allow(player_1).to receive(:computer_selection).and_return 'Paper'
       expect(subject.play('Paper', 'Paper')).to eq "Hmm. It's a tie this time"
     end

     it 'determines whether player_1 has won' do
      allow(player_1).to receive(:computer_selection).and_return 'Scissors'     
      expect(subject.play('Scissors', 'Paper')).to eq "Congratulations! You beat Lucy the Computer!!!"
     end

     it 'determines whether lucy_the_computer has won' do
      allow(player_1).to receive(:computer_selection).and_return 'Scissors'
      expect(subject.play('Scissors', 'Rock')).to eq "Bad luck! You were beaten this time"
     end
   end


   describe '#computer_selection' do
    it 'the computer generates a random move' do
      allow(player_1).to receive(:computer_selection).and_return('Rock')
      expect(subject.computer_selection).to eq 'Rock'
    end
  end

end 