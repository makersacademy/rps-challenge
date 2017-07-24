require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  let(:choices) { [:Paper, :Scissors, :Rock] }

  describe '#initialize' do
    it 'has an array of game options' do
      expect(computer.choices).to eq choices
    end
  end

  describe '#choose' do
    it 'chooses a random game selection' do
      allow(computer).to receive(:choose).and_return('Scissors')
      expect(computer.choose).to eq 'Scissors'
    end
  end
end
