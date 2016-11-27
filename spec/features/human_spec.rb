require 'human'
require 'spec_helper'

describe Human do

subject(:human) { described_class.new('A') }

  describe '#name' do
    it 'returns player name' do
      expect(human.name).to eq 'A'
    end
  end

  describe '#outcome for choosing rock' do

    before do
      allow(random_number).to receive(:number_generator).and_return(1)
    end

    it 'returns drew if player chooses rock' do
      expect(humanm.rock)
      expect(human.outcome).to eq 'drew'
    end

  end

  describe '#number_generator' do
    it 'should generate a random number' do
      uses = []
        100.times do
          uses << human.number_generator
        end
      expect(uses).to include(1, 2, 3,)
      expect(uses).not_to include(0, 4)
    end
  end

end
