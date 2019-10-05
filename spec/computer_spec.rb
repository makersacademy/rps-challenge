require 'computer'

describe Computer do

  let(:choice) {double 'move selection'}

  describe '#turn' do
    it "randomly selects a move" do
      srand(4)
      expect(subject.turn).to eq('scissors')
    end
  end
end
