require 'computer'
describe Computer do
  let(:computer) {described_class.new}
  describe '#choice' do
    it 'is set to either rock, scissors, or paper' do
      expect(computer.choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end
