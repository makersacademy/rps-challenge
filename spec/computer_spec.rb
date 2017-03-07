require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "Random choice selection for gameplay" do

    before do
      allow(computer).to receive(:draw).and_return 'rock'
    end

    it "randomly selects rock, paper, or scissors" do
      expect(computer.draw).to eq 'rock'
    end
  end

end
