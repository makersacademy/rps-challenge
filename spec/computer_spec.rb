require 'computer'

describe Computer do

  subject { described_class.new }

  describe '#choose_weapon' do
    it 'assigns choice a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      subject.choose_weapon
      expect(subject.choice).to eq :paper
    end
  end
end
