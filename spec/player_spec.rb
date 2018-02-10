require 'player'

describe Player do

  subject(:player){ described_class.new('Name') }

  context 'when instatiated' do
    it 'takes a string parameter and passes it to the @name attribute' do
      expect(player.name).to eq 'Name'
    end
  end


end
