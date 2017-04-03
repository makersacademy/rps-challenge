require 'player'

describe Player do
  subject(:sonny) {Player.new('Sonny')}

  describe '#initialize' do
    it 'returns a name' do
      expect(sonny.name).to eq 'Sonny'
    end
  end

end
