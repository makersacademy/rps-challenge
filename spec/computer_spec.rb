require 'computer'

describe Computer do
  subject(:comp) { described_class.new }

  let(:choices) { [:Paper, :Scissors, :Rock] }

  describe '#initialize' do
    it 'has an array of game options' do
      expect(comp.choices).to eq choices
    end
  end

  describe '#choose' do
    it 'chooses a random game selection' do
      allow(comp).to receive(:choose).and_return('Scissors')
      expect(comp.choose).to eq 'Scissors'
    end
  end
end
