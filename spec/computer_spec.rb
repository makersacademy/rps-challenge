require 'computer'

describe Computer do
  name = 'botty'
  subject(:computer) { described_class.new(name) }
  
  describe '#initialize' do
    it 'inherits name attribute from player class' do
      expect(computer.name).to eq name
    end
  end

  describe '#choose' do
    it 'chooses its hand shape randomly' do
      allow_any_instance_of(Array).to receive(:sample).and_return :scissors
      computer.choose
      expect(computer.choice).to eq :scissors
    end
  end
end
