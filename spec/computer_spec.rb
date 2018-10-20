require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#weapon' do
    it 'chooses a weapon' do
      expect(computer.weapon).to eq 'Paper'
    end
  end

end
