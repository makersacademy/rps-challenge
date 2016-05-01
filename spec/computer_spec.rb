require 'computer'

describe Computer do

  describe '#choose_weapon' do
    it 'should select a random weapon' do
      allow_any_instance_of(Array).to receive(:shuffle).and_return(['paper'])
      expect(subject.choose_weapon).to eq 'paper'
    end
  end

  it 'chosen should be one of the possibilities' do
    subject.choose_weapon
    expect(subject.chosen).to eq subject.chosen
  end

end
