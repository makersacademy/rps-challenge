require 'spec_helper'

describe Computer do

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq("Computer")
    end
  end

  describe '#choose' do
    it 'randomly selects a weapon' do
      srand(100)
      expect(subject.choose).to eq(:rock)
    end
    it 'randomly selects a weapon' do
      srand(99)
      expect(subject.choose).to eq(:paper)
    end
    it 'randomly selects a weapon' do
      srand(98)
      expect(subject.choose).to eq(:scissors)
    end
  end
  
end
