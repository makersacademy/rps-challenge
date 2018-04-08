require 'game'


RSpec.describe Game do
  subject(:game) { described_class.new }


 describe "#rock" do

   it "returns the string rock" do

     expect(game.rock).to eq('rock')

   end
 end

end
