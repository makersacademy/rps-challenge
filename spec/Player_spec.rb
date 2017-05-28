require 'player'

describe Player do
  subject(:player) {described_class.new}
  let(:jade) { double('Jade')}  #, attack:'' ) }

  it 'should be able to register name before playing game' do
    expect(player).to respond_to :name
  end


end
