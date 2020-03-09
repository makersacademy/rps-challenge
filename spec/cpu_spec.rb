require 'cpu'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#choose_weapon' do

    it 'responds to choose_weapon' do
      expect(computer).to respond_to(:choose_weapon)
    end

    it 'returns a symbol' do
      expect(computer.choose_weapon).to be_a(Symbol)
    end

  end

end