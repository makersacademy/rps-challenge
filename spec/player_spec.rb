require 'player'


describe Player do

subject(:player) { described_class.new(:name) }

# context "Entering player 1's name" do

it "should have a name" do
  expect(player).to respond_to(:name)
end

end
