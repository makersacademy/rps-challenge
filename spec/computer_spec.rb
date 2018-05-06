require 'computer'

describe Computer do
  let(:computer){described_class.new, weapon: 'rock' }

  describe "#computer_choose_weapon" do
    it 'chooses a random weapon' do
      computer.computer_choose_weapon
      expect(computer.weapon).to_return ("rock")
    end
  end
end
