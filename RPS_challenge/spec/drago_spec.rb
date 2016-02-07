require 'drago'

describe Drago do
  subject(:drago) { described_class.new }

  describe '#name' do

    it 'returns "Drago"' do
      expect(drago.name).to eq 'Drago'
    end

  end

  describe '#choice' do

    it 'returns an array containing Rock, Paper, Scissors' do
      expect(drago.choice).to include 'Rock','Paper','Scissors'
    end
  end
end
