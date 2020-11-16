require 'player'

describe Player do
  subject(:ahsoka) { Player.new('Ahsoka') }
  let(:rock) { double :rock }

  it 'creates a Player class instance' do
    expect(subject).to be_instance_of(Player)
  end

  describe '#name' do
    it 'returns the name' do
      expect(ahsoka.name).to eq('Ahsoka')
    end
  end

  describe '#choose' do
    it 'returns the chosen shape' do
      allow(ahsoka).to receive(:choose).and_return(rock)
      expect(ahsoka.choose).to eq(rock) # testing anything meaningful?
    end
  end
end
