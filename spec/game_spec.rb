require 'game'


RSpec.describe Game do

  subject(:game) { described_class.new }


 describe "#initialize" do

   it "has an empty array of players on intialization" do

     expect(game.players).to eq []
   end

 end

end
