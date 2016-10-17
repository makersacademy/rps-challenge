require 'player'

describe Player do

subject(:batman)   {described_class.new('Batman')}

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq 'Batman'
     end
    end

  describe '#weapon_choice'do
    it 'can choose a weapon' do
      subject.weapon_choice("Rock")
      expect(subject.weapon).to eq "Rock"
    end
  end

end
