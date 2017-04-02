require 'computer'
describe Computer do
  let(:computer) {described_class.new}
  describe '#choose' do
    it 'is set to either rock, scissors, or paper' do
      expect(computer.choose).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end
