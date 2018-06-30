require 'computer'

describe Computer do

  let(:subject) { described_class.new }
  let(:weapons) { ['Rock', 'Paper', 'Scissors'] }

  describe '#choose_weapon' do
    it 'selects a valid weapon' do
      subject.choose_weapon
      expect(weapons).to include subject.weapon
    end
  end

end
