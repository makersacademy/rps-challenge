require 'computer'

describe Computer do
  subject(:computer) { described_class.new(name) }
  let(:name) { 'Computer' }

  context '#initialization' do
    it 'has a name' do
      expect(computer.name).to eq name
    end
  end

  context '#selection of hand gestures' do
    it 'can be a shape Rock' do
      allow(computer).to receive(:random_choice).and_return(:rock)
      expect(computer.random_choice).to eq :rock
    end

    it 'can be a shape Paper' do
      allow(computer).to receive(:random_choice).and_return(:paper)
      expect(computer.random_choice).to eq :paper
    end

    it 'can be a shape Scissors' do
      allow(computer).to receive(:random_choice).and_return(:scissors)
      expect(computer.random_choice).to eq :scissors
    end
  end  
end