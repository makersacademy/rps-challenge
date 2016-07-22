require 'player'

describe Player do

  subject(:pip) {Player.new('Pip')}
  subject(:wayne) {Player.new('Wayne')}

  describe "#name" do
    it 'returns the name' do
     expect(pip.name).to eq "Pip"
    end
  end
end
