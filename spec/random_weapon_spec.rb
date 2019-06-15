require 'random_weapon'

describe RandomWeapon do
  describe '#weapon' do
    it 'returns rock, paper or scissors' do
      expect(subject.weapon).to eq("rock").or eq("paper").or eq("scissors")
    end
  end
end
