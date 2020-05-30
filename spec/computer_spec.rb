require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#random_option" do
    it "returns a random option to play" do
      expect(Computer::OPTIONS).to include computer.random_option
    end
  end
end
