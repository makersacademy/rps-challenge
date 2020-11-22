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
end
