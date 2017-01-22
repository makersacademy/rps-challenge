require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#computer_weapon" do
    it 'allows computer to select a weapon randomly' do
      # show test for randmness with srand
      # allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      allow(computer).to receive(:select_weapon).and_return("paper")
      expect(computer.select_weapon).to eq "paper"
    end
  end
end
