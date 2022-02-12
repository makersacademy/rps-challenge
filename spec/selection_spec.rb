require_relative '../lib/selection'

describe Selection do

  subject(:selection) { described_class.new('Rock') }
  describe 'on #initialize' do
    it 'saves the players selection' do
      expect(selection.player).to eq 'Rock'
    end
  end

  describe '#computer' do
    it 'generates a random selection for the computer' do
      expect(selection).to receive(:computer) { 'Paper' }
      expect(selection.computer).to eq 'Paper'
    end
  end
  

end