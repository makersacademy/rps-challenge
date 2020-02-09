require 'spec_helper'

describe Player do
  subject(:josh) { described_class.new("Josh") }
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns the players name' do
      expect(josh.name).to eq("Josh")
    end
  end

  describe '#choose' do
    it 'fails if outside possible choices' do 
      expect { josh.choose("Dog") }.to raise_error("Not a possible weapon")
    end
    it 'returns choice as symbol if it is an allowed weapon' do 
      expect(josh.choose("rock")).to eq(:rock)
      expect(josh.choose("paper")).to eq(:paper)
      expect(josh.choose("scissors")).to eq(:scissors)
    end
  end
end
