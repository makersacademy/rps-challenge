require 'computer'
require 'game'

describe Computer do
  subject { described_class.new }

  describe '#play' do
    it 'plays scissors' do
      allow(subject).to receive(:play).and_return('scissors')
      expect(subject.play).to eq('scissors')
    end
  end

end
