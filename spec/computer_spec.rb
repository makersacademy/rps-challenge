require 'computer'

describe Computer do
  subject(:computer) { Computer.new }
  let(:rock) { double :rock }

  it 'creates a Computer class instance' do
    expect(computer).to be_instance_of(Computer)
  end

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq('The Computer')
    end
  end

  describe '#choose' do
    it 'returns a randomly choosen shape' do
      allow(Game::OPTIONS).to receive(:sample).and_return(rock)
      expect(computer.choose).to eq(rock)
    end
  end
end
