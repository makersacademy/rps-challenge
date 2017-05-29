require 'player'

describe Player do
  subject(:player) {described_class.new('Jade')}
  # let(:jade) { double('Jade')}  #, attack:'' ) }

  it 'should be able to register name before playing game' do
    expect(player).to eq 'Jade'
  end


end
