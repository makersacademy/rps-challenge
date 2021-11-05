require 'player'

describe Player do 
   let(:player_1) { Player.new('Joe')}

   it "shows the players name" do
      expect(player_1.name).to eq 'Joe'
   end

   describe '#rplayer_choice' do
   it 'should give a choice' do
     allow(player_1).to receive(:player_choice) { "Rock"}
     expect(player_1.player_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
   end
  end
end 