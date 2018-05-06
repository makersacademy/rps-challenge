require './lib/player.rb'

describe Player do

  subject(:player) { described_class.new}
  let(:name) { double :name }


  describe '#set_name' do
    it 'should set the name' do
      player.set_name(name)
      expect(player.name).to be name
    end
  end

end
