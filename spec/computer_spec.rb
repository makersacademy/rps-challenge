require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  context '#weapon' do
    it 'should display rock when rock is chosen' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(computer.weapon).to eq(:rock)
    end
    it 'should display paper when paper is chosen' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(computer.weapon).to eq(:paper)
    end
    it 'should display scissors when scissors is chosen' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(computer.weapon).to eq(:scissors)
    end
  end
end
