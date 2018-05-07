require 'computer'

describe Computer do
  describe "#computer_choose_weapon" do
    it 'chooses a random weapon' do
      stub_const("Game::WEAPONS", [:rock])
      subject.computer_choose_weapon
      expect(subject.weapon).to eq(:rock)
    end
  end
end
