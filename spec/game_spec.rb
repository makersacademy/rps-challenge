require 'game'


RSpec.describe Game do

  subject(:game) { described_class.new }


 describe "#initialize" do

   it "has an empty array of players on intialization" do

     expect(game.players).to eq []
   end

 end

 describe "#who_wins" do
   let (:player) { double('player', :choice => 'Rock') }
   let (:player2) { double('player2', :choice => 'Paper', :name => 'John') }
   it "determines which player wins" do
    expect(game.who_wins(player, player2)).to eq 'John'



   end
 end

end
