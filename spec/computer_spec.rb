require 'computer'

describe Computer do

  let(:choice) {double 'move selection'}

  describe '#turn' do
    it "randomly selects a move" do
      srand(4)
      expect(subject.move).to eq('Scissors')
    end
  end

  describe '#name' do
    it "returns name of computer" do
      expect(subject.name).to eq 'Computer'
    end
  end

  describe '#points' do
    it "returns players points" do
      expect(subject.points).to eq 0
    end
  end
end
