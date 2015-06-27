# require "game"

# describe Game do

#   let(:playercreator) { double :playercreator}
#   let(:player_creator) { double :player_creator}
#   let(:number_of_players) {double :number_of_players}
  
#   let(:game) { Game.new player_creator: playercreator, number_of_players: number_of_players}

#   describe "#initialize_players" do

#     it "initialize the players" do
#       expect(player_creator).to receive(:create).with(number_of_players)
#       game
#     end

#   end

# end