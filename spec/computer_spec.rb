require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#select_weapon" do
    it 'allows computer to select a weapon randomly' do
      expect(computer.weapons).to include(computer.select_weapon)

    end
  end
end
