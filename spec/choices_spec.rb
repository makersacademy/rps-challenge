require './lib/choices'
describe Choices do

  describe "Rock" do
    it "is a class method that returns :Rock " do
      expect(Choices.rock).to eq :Rock
    end
  end

end
