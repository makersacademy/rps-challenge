require 'weapon'

describe Weapon do

    it 'results in an array of items it beats upon initialization' do
      subject.is_now_superior_to 'rock'
      expect(subject.is_superior_to).to include 'rock'
    end

    it 'can determine if it beats another weapon' do
      scissors = Weapon.new
      subject.is_now_superior_to scissors
      expect(subject.beats scissors).to eq true
    end
end