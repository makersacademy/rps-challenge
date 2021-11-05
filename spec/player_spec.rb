require 'player'

describe Player do 
   let(:player_1) { Player.new('Joe')}

   it "shows the players name" do
      expect(player_1.name).to eq 'Joe'
   end
end 