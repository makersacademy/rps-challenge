require 'player'

describe Player do
  subject(:mark) { Player.new("Mark") }

  describe '#name' do
    it 'returns the name' do
      expect(mark.name).to eq "Mark"
    end
  end

  describe '#choice' do
    it 'returns the attribute choice' do
      expect(mark.choice).to eq nil
    end
  end

  describe '#update_choice' do
    it 'updates the choice attribute to the one selected in radio buttons' do
      mark.update_choice("Rock")
      expect(mark.choice).to eq "Rock"
    end
  end

end
