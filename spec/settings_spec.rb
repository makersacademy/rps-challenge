require 'settings'

describe Settings do
  describe 'Game Options Array - classic' do
    let(:game) { double :game, :gamevariant => "classic" }
    it 'returns array' do
      expect(subject.weapon_list).to eq ['rock','paper','scissors']
    end
  end
end
