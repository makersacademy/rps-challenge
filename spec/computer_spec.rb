require 'computer'

describe Computer do

  # Other mocks
  let(:some_cabinet) { double(:some_cabinet) }

  # Computers
  let(:subject) { described_class.new(some_cabinet) }

  describe '#initialize' do
    it 'has a weapon cabinet' do
      expect(subject.weapon_cabinet).to eq some_cabinet
    end
  end
end
