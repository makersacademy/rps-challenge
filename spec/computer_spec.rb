require 'computer'

describe Computer do

subject (:computer) {described_class.new}
let (:weapon) {double :weapon}

  describe '#choose_weapon' do
    it 'returns the weapon' do
      computer.choose_weapon
      expect(Computer::WEAPONS).to include(computer.weapon)
    end
  end

end
