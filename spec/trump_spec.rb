require 'trump'

describe Trump do

  describe 'chooses a weapon' do
    it 'randomly chooses a weapon' do
      allow(subject).to receive(choose_weapon).and_return(:rock)
      expect(subject.current_weapon).to eq(:rock)
      end
  end

end
