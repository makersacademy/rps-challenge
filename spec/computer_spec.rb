require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#computer_choose" do
    it "returns either Rock, Paper or Scissors" do
      expect(Computer::WEAPONS).to include computer.choose
    end
  end

end
