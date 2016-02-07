require 'drago'

describe Drago do
  subject(:drago) { described_class.new }

  describe '#name' do

    it 'returns "Drago"' do
      expect(drago.name).to eq 'Drago'
    end

  end

  describe 'can randomly select a #choice' do

    it 'returns an array containing Rock, Paper, Scissors' do
      expect(drago.options).to include 'Rock','Paper','Scissors'
    end

    it 'selects an item from options at random, and pushes it to #choice' do
      expect(drago.options.include? drago.choice).to be true
    end

  end
end
