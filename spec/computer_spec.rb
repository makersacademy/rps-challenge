require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:name) { 'Computer' }

  context '#initialization' do
    it 'has a name' do
      expect(computer.name).to eq name
    end
  end

  context '#selection of hand gestures' do
    it 'can be a shape Rock' do
      allow(computer).to receive(:shape).and_return(:rock)
      expect(computer.shape).to eq :rock
    end

    it 'can be a shape Paper' do
      allow(computer).to receive(:shape).and_return(:paper)
      expect(computer.shape).to eq :paper
    end

    it 'can be a shape Scissors' do
      allow(computer).to receive(:shape).and_return(:scissors)
      expect(computer.shape).to eq :scissors
    end
  end  
end