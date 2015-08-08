require 'weapon'

describe Weapon do

    it 'it can be determined to be superior to other weapons' do
      rock = Weapon.new
      subject.is_superior_to rock
      expect(subject.weaker_weapons).to include rock
    end

    it 'can determine if it beats another weapon' do
      scissors = Weapon.new
      subject.is_superior_to scissors
      expect(subject.beats? scissors).to eq true
    end
end