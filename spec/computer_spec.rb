require 'computer'

describe Computer do
  subject(:computer) { described_class.new}

  describe "#initialize" do
    it "should set name as Computer" do
      expect(computer.name).to eq("Computer")
    end
  end

  describe "#move" do
    it 'picks a valid move' do
      expect([:rock, :paper, :scissors]).to include computer.move
    end
  end
end