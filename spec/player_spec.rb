require 'player'

describe Player do

  subject(:player) {described_class.new('Fred')}

 describe '#initalize' do
   it 'takes player name as one argument' do
     expect(player.name).to eq 'Fred'
   end

   it 'have player choice set to nil' do
     expect(player.player_choice).to be nil
   end
 end

 describe '#choose_paper' do
   it 'sets player choice to :paper' do
     player.choose_paper
     expect(player.player_choice).to be :paper
   end
 end

 describe '#choose_scissors' do
   it 'sets player choice to :scissors' do
     player.choose_scissors
     expect(player.player_choice).to be :scissors
   end
 end

 describe '#choose_rock' do
   it 'sets player choice to :rock' do
     player.choose_rock
     expect(player.player_choice).to be :rock
   end
 end

 describe '#choose_spock' do
   it 'sets player_choice to :spock' do
     player.choose_spock
     expect(player.player_choice).to be :spock
   end

 describe '#choose_lizard' do
   it 'sets player choice to :lizard' do
     player.choose_lizard
     expect(player.player_choice).to be :lizard
   end
 end
 end

end
