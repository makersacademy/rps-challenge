require 'opponent.rb'
describe Opponent do 
  subject(:opponent) { described_class.new }
  it "expects the oppenent to return a random shape." do
    expect(Opponent::SHAPE).to include opponent.shape 
  end
end 

# This is saying we're expecting the class Opponent with the (shape
# Constant) to include the class opponent when the shape method is 
# called on it? shape method has sample on it which will randomize
# what we're expecting to receive.