require 'player'

describe Player do
  let(:player1) { described_class.new('Gabriela') }

  describe 'Attributes' do
    it 'returns a name' do
      expect(player1.name).to eq('Gabriela')
    end
  end

end
