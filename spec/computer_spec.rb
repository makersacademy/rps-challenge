require './docs/computer.rb'

describe Computer do

let(:computer) { Computer.new }

  describe "#initilize" do
    it "should have a random weapon when initialized" do
      expect(computer.choice).not_to eq(nil)
    end
  end

end
