require 'player'

describe Player do

  subject { described_class.new("James") }

  describe '#initialize' do
      it 'returns players name' do
        expect(subject.name).to eq ("James")
      end
  end

  describe '#choose_weapon' do
    it 'returns players chosen weapon' do
      subject.choose_weapon(:rock)
      expect(subject.weapon).to eq (:rock)
    end
  end

end
