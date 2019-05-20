require 'ai'

describe 'AI' do
  let(:subject) { AI.new }
  let(:weapons) { ['Rock', 'Paper', 'Scissors'] }

  describe '#weapon_choice' do
    it 'can select a weapon' do
      subject.weapon_choice
      expect(weapons).to include subject.weapon 
    end
  end

end
