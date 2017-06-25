require './docs/computer.rb'

describe Computer do
let(:computer) { Computer.new }
  describe "#initialize" do
    it "should have a random move when initialized" do
      expect(computer.move).not_to eq nil
    end
  end
end
