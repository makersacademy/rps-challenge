require 'human'
require 'spec_helper'

describe Human do

subject(:human) { described_class.new('A') }

  describe '#name' do
    it 'returns player name' do
      expect(human.name).to eq 'A'
    end
  end

  describe '#outcome' do
    it 'returns won if player wins' do
      expect(human.outcome).to eq 'won'
    end
  end

  describe '#number_generator' do
    it "returns number 1" do
      expect(human.number_generator).to eq 1
    end
  end

end
