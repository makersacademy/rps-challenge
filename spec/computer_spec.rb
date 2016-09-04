require 'computer'

describe Computer do

subject (:computer) {described_class.new}
let (:weapon) {double :weapon}

  describe '#weapon' do
    it 'returns the weapon' do
      expect(Computer::WEAPONS).to include(computer.weapon)
    end
  end

end
