require 'computer'

describe Computer do

  subject(:subject) { described_class.new('rock') }

  describe 'initialize' do
    it 'should select weapon from array' do
      expect(subject.weapon).to eq 'rock'
    end
  end
end
